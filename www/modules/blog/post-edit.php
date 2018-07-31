<?php 

if (!isAdmin()) {
	header('Location: ' . HOST);
	die();
}

$title = "Редактирование поста";

$post = R::load('posts', $_GET['id']);
$cats = R::find('categories', 'ORDER BY cat_title ASC');

if (isset($_POST['postUpdated'])) {

	if (trim($_POST['postTitle']) == '') {
		$errors[] = ['title' => 'Введите название поста'];
	}

	if (trim($_POST['postText']) == '') {
		$errors[] = ['title' => 'Введите содержание поста'];
	}

	if (empty($errors)) {
		$post->title = htmlentities($_POST['postTitle']);
		$post->cat = htmlentities($_POST['postCat']);
		$post->text = $_POST['postText'];
		$post->authorId = $_SESSION['logged_user']['id'];
		$post->updateTime = R::isoDateTime();

		if (isset($_FILES['postImg']['name']) && $_FILES['postImg']['tmp_name'] != '') {

			// write file image params in variables
			$fileName = $_FILES['postImg']['name'];
			$fileTmpLoc = $_FILES['postImg']['tmp_name'];
			$fileType = $_FILES['postImg']['type'];
			$fileSize = $_FILES['postImg']['size'];
			$fileErrorMsg = $_FILES['postImg']['error'];
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

			if (!preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName)) {
				$errors[] = ['title' => 'Неверный формат файла', 'desc' => '<p>Файл изображения должен быть в формате gif, jpg, jpeg или png.</p>'];
			}

			if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку'];
			}

			$postImgFolderLocation = ROOT . 'usercontent/blog/';

			// Если картинка уже установлена, т.е. загружен ранее, то удаляем файл аватара
			$postImg = $post->post_img;
			if ($postImg != '') {
				$picUrl = $postImgFolderLocation . $postImg; // usercontent/avatar/photo.jpg
				// Удаляем аватар
				if (file_exists($picUrl)) { unlink($picUrl); }
				$picUrl320 = $postImgFolderLocation . '320-' . $postImg;
				if (file_exists($picUrl320)) { unlink($picUrl320); }
			}

			// Перемещаем загруженный файл в нужную директорию
			$db_file_name = rand(1000000000, 9999999999) . "." . $fileExt;
			$uploadFile = $postImgFolderLocation . $db_file_name; 
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadFile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла'];
			}

			include_once(ROOT . "libs/image_resize_imagick.php");

			$target_file = $postImgFolderLocation . $db_file_name;
			$wmax = 920;
			$hmax = 620;
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			$img->writeImage($target_file);
			
			$post->postImg = $db_file_name;

			$target_file = $postImgFolderLocation . $db_file_name;
			$resized_file = $postImgFolderLocation . "320-" . $db_file_name;
			$wmax = 320;
			$hmax = 140;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			
			$post->postImgSmall = "320-" .$db_file_name;

		} else if (isset($_POST['deleteImg'])) { // УДАЛЕНИЕ Картинки ПО КНОПОЧКЕ 
			// Сработает, если нет отправки файла
			$postImg = $post->post_img;
			$picUrl = ROOT . 'usercontent/blog/' . $postImg; 
			unlink($picUrl);
			$picUrl320 = ROOT . 'usercontent/blog/' . '320-' . $postImg;
			unlink($picUrl320); 

			$post->post_img = '';
			$post->post_img_small = '';
		}		

		R::store($post);
		header('Location: ' . HOST . 'blog/post?id=' . $post->id . '&result=postUpdated');
		exit();
	}
}


// Готовим контент для центральной части
ob_start();
include ROOT ."templates/_parts/_header.tpl";
include ROOT ."templates/blog/post-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/template.tpl";
include ROOT ."templates/_parts/_footer.tpl";
include ROOT ."templates/_parts/_foot.tpl";


 ?>