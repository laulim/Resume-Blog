<?php 

if (!isAdmin()) {
	header('Location: ' . HOST);
	die();
}

$title = "Портфолио - Добавить новую работу";

if (isset($_POST['workNew'])) {

	if (trim($_POST['title']) == '') {
		$errors[] = ['title' => 'Введите название работы'];
	}

	if (trim($_POST['description']) == '') {
		$errors[] = ['title' => 'Введите краткое описание работы'];
	}

	if (trim($_POST['tecnologies']) == '') {
		$errors[] = ['title' => 'Введите технлогии'];
	}

	if (empty($errors)) {
		$work = R::dispense('works');
		$work->author_id = $_SESSION['logged_user']['id'];
		$work->title = htmlentities($_POST['title']);
		$work->description = $_POST['description'];
		$work->result = $_POST['result'];
		$work->tecnologies = $_POST['tecnologies'];
		$work->demo = htmlentities($_POST['demo']);
		$work->github = htmlentities($_POST['github']);
		$work->dateTime = R::isoDateTime();

		if (isset($_FILES['image']['name']) && $_FILES['image']['tmp_name'] != '') {

			// write file image params in variables
			$fileName = $_FILES['image']['name'];
			$fileTmpLoc = $_FILES['image']['tmp_name'];
			$fileType = $_FILES['image']['type'];
			$fileSize = $_FILES['image']['size'];
			$fileErrorMsg = $_FILES['image']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			// Check file properties on different conditions
			list($width, $height) = getimagesize($fileTmpLoc);
			if ($width < 10 || $height < 10) {
				$errors[] = ['title' => 'Изображение не имеет размера. Загрузите изображение побольше'];
			}

			if ($fileSize > 4194304) {
				$errors[] = ['title' => 'Файл изображения не должен быть более 4 Mb'];
			}

			if (!preg_match("/\.(jpg|jpeg|png)$/i", $fileName)) {
				$errors[] = ['title' => 'Неверный формат файла', 'desc' => '<p>Файл изображения должен быть в формате jpg, jpeg или png.</p>'];
			}

			if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку'];
			}

			

			// Перемещаем загруженный файл в нужную директорию
			$db_file_name = rand(1000000000, 9999999999) . "." . $fileExt;
			$workImgFolderLocation = ROOT . 'usercontent/works/';
			$uploadFile = $workImgFolderLocation . $db_file_name; 
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadFile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла'];
			}

			include_once(ROOT . "libs/image_resize_imagick.php");

			$target_file = $workImgFolderLocation . $db_file_name;
			$wmax = 920;
			$hmax = 530;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($target_file);
			
			$work->image = $db_file_name;

			$target_file = $workImgFolderLocation . $db_file_name;
			$resized_file = $workImgFolderLocation . "360-" . $db_file_name;
			$wmax = 360;
			$hmax = 190;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			
			$work->image_small = "360-" .$db_file_name;
		}

		R::store($work);
		header('Location: ' . HOST . 'portfolio?result=workCreated');
		exit();
	} #/work?id=' . $work->id . '&result=workCreated'
}


// Готовим контент для центральной части
ob_start();
include ROOT ."templates/_parts/_header.tpl";
include ROOT ."templates/portfolio/work-new.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/template.tpl";
include ROOT ."templates/_parts/_footer.tpl";
include ROOT ."templates/_parts/_foot.tpl";


 ?>