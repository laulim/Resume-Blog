<?php 

if (isLoggedIn()) {
	header('Location: ' . HOST);
	die();
}

$title = 'Восстановление пароля';

if (isset($_POST['lost-password'])) {
	if (trim($_POST['email']) == '') {
		$errors[] = ['title' => 'Введите email'];
	}

	if (empty($errors)) {
		$user = R::findOne('users', 'email = ?', array($_POST['email']));

		if ($user) {
			// Генерация кода и сохранение кода в БД
			function random_str($num = 30) {
				return substr(str_shuffle('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'), 0, $num);
			}

			$recovery_code = random_str(15);
			$user->recovery_code = $recovery_code;
			$user->recovery_code_times = 3;
			R::store($user);

			// Высылаем инструкцию на почту
			$recovery_msg = "<p>Код для сброса пароля: <b>$recovery_code</b></p>";
			$recovery_msg .= "<p>Для сброса пароля перейдите по ссылке ниже, и установите новый пароль:</p>";
			$recovery_msg .= '<p><a href="' . HOST;
			$recovery_msg .= "set-new-password?email=" . $_POST['email'] . "&code=" . $recovery_code;
			$recovery_msg .= '" target="_blank"';
			$recovery_msg .= "Установить новый пароль</a></p>";

			$headers = "MIME-Version: 1.0" . PHP_EOL . 
						"Content-Type: text/html; charset=utf-8" . PHP_EOL .
						"From:" . adopt( SITE_NAME ) . "<" . SITE_EMAIL . " >" . PHP_EOL .
						"Reply-To:" . ADMIN_EMAIL;

			mail($_POST['email'], 'Восстановление пароля', $recovery_msg, $headers);

			$success[] = [
				'title' => "Все отлично!",
				'desc' => "<p>Инструкции по восстановлению пароля высланы на {$_POST['email']}</p>"
			];
		} else {
			$errors[] = ['title' => 'Пользователь с таким email не зарегестрирован'];
		}
	}
}


// Готовим контент для центральной части
ob_start();
include ROOT ."templates/login/form-lost-password.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/login/login-page.tpl";
include ROOT ."templates/_parts/_foot.tpl";

 ?>
