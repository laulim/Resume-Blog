<form class="login-page__form text-center" id="enter-form" method="POST" action="<?=HOST?>set-new-password">
	<?php if ($newPasswordReady == false): ?>
		<div class="title-1 mb-30">Восстановление пароля</div>
	<?php endif ?>

	<?php 
	// echo "<pre>";
	// print_r($_POST);
	// echo "</pre>";
	?>

	<?php require ROOT. "templates/_parts/errors.tpl" ?>
	<?php require ROOT. "templates/_parts/success.tpl" ?>

	<?php if ($newPasswordReady == false): ?>
		<input class="input" type="password" name="resetpassword" placeholder="Новый пароль" data-required="required" data-text-error="пароль" value="" />
	<?php endif ?>
	
	<div class="login-page__form-helpers login-page__form-helpers--center">
		<a class="login-page__link" href="<?=HOST?>login">Перейти на страницу входа</a>
	</div>
	<?php if ($newPasswordReady == false): ?>
		<input type="hidden" name="resetemail" value="<?=$_GET['email']?>">
		<input type="hidden" name="onetimecode" value="<?=$_GET['code']?>">
		<input class="button button--enter" name="set-new-password" type="submit" value="Установить новый пароль" />
	<?php endif ?>
</form>