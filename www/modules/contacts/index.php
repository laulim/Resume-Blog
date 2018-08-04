<?php 
$title = "Контакты";

$contacts = R::load('contacts', 1);

if (isset($_POST['newMessage'])) {
	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите email'];
	}

	if (trim($_POST['name']) == '') {
		$errors[] = ['title' => 'Введите имя'];
	}

	if (trim($_POST['message']) == '') {
		$errors[] = ['title' => 'Введите текст сообщения'];
	}

	if (empty($errors)) {
		$message = R::dispense('messages');
		$message->name = htmlentities($_POST['name']);
		$message->email = htmlentities($_POST['email']);
		$message->message = htmlentities($_POST['message']);
		$message->dateTime = R::isoDateTime();

		if (isset($_FILES['userFile']['name']) && $_FILES['userFile']['tmp_name'] != '') {
			$fileName = $_FILES['userFile']['name'];
			$fileTmpLoc = $_FILES['userFile']['tmp_name'];
			$fileType = $_FILES['userFile']['type'];
			$fileSize = $_FILES['userFile']['size'];
			$fileErrorMsg = $_FILES['userFile']['error'];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);

			$db_file_name = rand(1000000000, 9999999999) . "." . $fileExt;

			if ($fileSize > 4194304) {
				$errors[] = ['title' => 'Файл изображения не должен быть более 4 Mb'];
			} else if (!preg_match("/\.(pdf|doc|jpeg|jpg|png|gif)$/i", $fileName)) {
				$errors[] = ['title' => 'Неверный формат файла', 'desc' => '<p>Файл должен быть в формате jpg, jpeg, pdf, doc, gif или png.</p>'];
			} else if ($fileErrorMsg == 1) {
				$errors[] = ['title' => 'При загрузке файла произошла ошибка. Повторите попытку'];
			}

			$postFileFolderLocation = ROOT . 'usercontent/upload_files/';

			$uploadFile = $postFileFolderLocation . $db_file_name; 
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadFile);

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла'];
			}

			$message->message_file_name_original = $fileName;
			$message->message_file = $db_file_name;
		}


		R::store($message);
		// header("Location: " . HOST . "contacts");
		// exit();

		$success[] = ['title' => 'Сообщение было успешно отправлено'];
	}
}


// Готовим контент для центральной части
ob_start();
include ROOT ."templates/_parts/_header.tpl";
include ROOT ."templates/contacts/contacts.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/template.tpl";
include ROOT ."templates/_parts/_footer.tpl";
include ROOT ."templates/_parts/_foot.tpl";


 ?>