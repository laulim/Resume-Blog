
<form class="login-page__form text-center" id="register-form" method="POST" action="<?=HOST?>registration">
	<div class="title-1">Регистрация</div>

	<?php 
	// echo "<pre>";
	// print_r($_POST);
	// echo "</pre>";
	?>

	<?php require ROOT. "templates/_parts/errors.tpl" ?>

	<input class="input" type="text" name="email" placeholder="Email" value="info@mail.com" />
	<input class="input" type="password" name="password" placeholder="Пароль" value="123456" />
	<input class="button button--enter" type="submit" name="register" value="Регистрация" />
</form>
