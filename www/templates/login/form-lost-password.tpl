<form class="login-page__form text-center" id="enter-form" method="POST" action="<?=HOST?>lost-password">
	<div class="title-1 mb-30">Восстановление пароля</div>

	<?php 
	// echo "<pre>";
	// print_r($_POST);
	// echo "</pre>";
	?>

	<?php require ROOT. "templates/_parts/errors.tpl" ?>
	<?php require ROOT. "templates/_parts/success.tpl" ?>

	<input class="input" type="text" name="email" placeholder="Email" data-required="required" data-text-error="email" value="info@mail.com" />
	<div class="login-page__form-helpers login-page__form-helpers--center">
		<a class="login-page__link" href="<?=HOST?>login">Перейти на страницу входа</a>
	</div>
	<input class="button button--enter" name="lost-password" type="submit" value="Восстановить пароль" />
</form>