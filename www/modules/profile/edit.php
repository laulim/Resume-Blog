<?php 
$title = "Редактировать профиль";

$currentUser = $_SESSION['logged_user'];
$user = R::load('users', $currentUser->id);

if (isset($_POST['profile-update'])) {

	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите email'];
	}

	if (trim($_POST['firstname']) == '') {
		$errors[] = ['title' => 'Введите имя'];
	}

	if (trim($_POST['lastname']) == '') {
		$errors[] = ['title' => 'Введите фамилию'];
	}

	if (empty($errors)) {
		$user->firstname = htmlentities($_POST['firstname']);
		$user->lastname = htmlentities($_POST['lastname']);
		$user->email = htmlentities($_POST['email']);

		if (trim($_POST['country']) != '') {
			$user->country = htmlentities($_POST['country']);
		} else if (trim($_POST['country']) == '') {
			$user->country = NULL;
		}

		if (trim($_POST['city']) != '') {
			$user->city = htmlentities($_POST['city']);
		} else if (trim($_POST['city']) == '') {
			$user->city = NULL;
		}

		

		if (isset($_FILES['avatar']['name']) && $_FILES['avatar']['tmp_name'] != '') {
			// write file image params in variables
			$fileName = $_FILES['avatar']['name'];
			$fileTmpLoc = $_FILES['avatar']['tmp_name'];
			$fileType = $_FILES['avatar']['type'];
			$fileSize = $_FILES['avatar']['size'];
			$fileErrorMsg = $_FILES['avatar']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);
 
			// Check file properties on different conditions
			list($width, $height) = getimagesize($fileTmpLoc);
			if ($width < 10 || $height < 10) {
				$errors[] = ['title' => 'Изображение не имеет размераю Загрузите изображение побольше'];
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

			// проверяем установлен ли аватар пользователя
			$avatar = $user->avatar;
			$avatarFolderLocation = ROOT . 'usercontent/avatar/';

			// Если аватар уже установлен, т.е. загружен ранее, то удаляем файл аватара
			if ($avatar != '') {
				$picUrl = $avatarFolderLocation . $avatar; // usercontent/avatar/photo.jpg
				// Удаляем аватар
				if (file_exists($picUrl)) { unlink($picUrl); }
				$picUrl48 = $avatarFolderLocation . "48-" . $avatar;
				if (file_exists($picUrl48)) { unlink($picUrl48); }
			}

			// Перемещаем загруженный файл в нужную директорию
			$db_file_name = rand(1000000000, 9999999999) . "." . $fileExt;
			$uploadFile = $avatarFolderLocation . $db_file_name; 
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadFile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла'];
			}

			include_once(ROOT . "libs/image_resize_imagick.php");

			$target_file = $avatarFolderLocation . $db_file_name;
			$wmax = 222;
			$hmax = 222;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($target_file);
			
			$user->avatar = $db_file_name;

			$target_file = $avatarFolderLocation . $db_file_name;
			$resized_file = $avatarFolderLocation . "48-" . $db_file_name;
			$wmax = 48;
			$hmax = 48;
			$img = createThumbnail($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);
			
			$user->avatarSmall = "48-" .$db_file_name;

		}

		// Удаление аватарки
		if (isset($_POST['deleteAvatar'])) {
			$picUrl = ROOT . 'usercontent/avatar/' . $currentUser->avatar; 
			unlink($picUrl);
			$picUrl48 = ROOT . 'usercontent/avatar/' . $currentUser->avatar_small;
			unlink($picUrl48); 

			$user->avatar = NULL;
			$user->avatarSmall = NULL;
		}

		

		R::store($user);
		$_SESSION['logged_user'] = $user;
		$currentUser = $_SESSION['logged_user'];
		header('Location: ' . HOST . "profile");
		exit();
	}
}


// Готовим контент для центральной части
ob_start();
include ROOT ."templates/_parts/_header.tpl";
include ROOT ."templates/profile/profile-edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/template.tpl";
include ROOT ."templates/_parts/_footer.tpl";
include ROOT ."templates/_parts/_foot.tpl";


 ?>