<?php 

if (!isAdmin()) {
	header('Location: ' . HOST);
	die();
}

$about = R::load('about', 1);

$title = "Редактировать - Обо мне";

if (isset($_POST['textUpdate'])) {
	if (trim($_POST['name']) == '') {
		$errors[] = ['title' => 'Введите имя и фамилию'];
	}

	if (trim($_POST['description']) == '') {
		$errors[] = ['title' => 'Введите описание'];
	}

	if (empty($errors)) {
		// $about = R::dispense('about');
		$about->name = htmlentities($_POST['name']);
		$about->description = $_POST['description'];

		if (isset($_FILES['photo']['name']) && $_FILES['photo']['tmp_name'] != '') {
			// write file image params in variables
			$fileName = $_FILES['photo']['name'];
			$fileTmpLoc = $_FILES['photo']['tmp_name'];
			$fileType = $_FILES['photo']['type'];
			$fileSize = $_FILES['photo']['size'];
			$fileErrorMsg = $_FILES['photo']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			// Check file properties on different conditions
			list($width, $height) = getimagesize($fileTmpLoc);
			if ($width < 10 || $height < 10) {
				$errors[] = ['title' => 'Изображение не имеет размера. Загрузите изображение побольше'];
			}

			if ($fileSize > 2097152) {
				$errors[] = ['title' => 'Файл изображения не должен быть более 2 Mb'];
			}

			if (!preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName)) {
				$errors[] = ['title' => 'Неверный формат файла', 'desc' => '<p>Файл изображения должен быть в формате gif, jpg, jpeg или png.</p>'];
			}

			if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку'];
			}

			$aboutPhotoFolderLocation = ROOT . 'usercontent/about/';

			// Если картинка уже установлена, т.е. загружен ранее, то удаляем файл аватара
			$photo = $about->photo;
			if ($photo != '') {
				$picUrl = $aboutPhotoFolderLocation . $photo; 
				if (file_exists($picUrl)) { unlink($picUrl); }
			}

			// Перемещаем загруженный файл в нужную директорию
			$db_file_name = rand(1000000000, 9999999999) . "." . $fileExt;
			$uploadFile = $aboutPhotoFolderLocation . $db_file_name; 
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadFile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла'];
			}

			include_once(ROOT . "libs/image_resize_imagick.php");

			$target_file = $aboutPhotoFolderLocation . $db_file_name;
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($target_file);
			
			$about->photo = $db_file_name;

		} else if (isset($_POST['deletePhoto'])) { // УДАЛЕНИЕ Картинки ПО КНОПОЧКЕ 
			// Сработает, если нет отправки файла
			$photo = $about->photo;
			$picUrl = ROOT . 'usercontent/about/' . $photo; 
			unlink($picUrl);
			$about->photo = '';
		}		


		R::store($about);
		header('Location: ' . HOST . 'about');
		exit();
	}
}



// Готовим контент для центральной части
ob_start();
include ROOT ."templates/_parts/_header.tpl";
include ROOT ."templates/about/edit-text.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/template.tpl";
include ROOT ."templates/_parts/_footer.tpl";
include ROOT ."templates/_parts/_foot.tpl";

?>
