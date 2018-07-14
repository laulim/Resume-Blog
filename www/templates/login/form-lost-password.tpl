<form class="login-page__form text-center" id="lost-password-form" method="POST" action="<?=HOST?>lost-password">
	<div class="title-1 mb-30">Забыл пароль</div>

	<?php require ROOT. "templates/_parts/errors.tpl" ?>

	<input class="input" type="text" name="email" placeholder="Email" value="info@mail.com" />
	<div class="login-page__form-helpers login-page__form-helpers--center">
		<a class="login-page__link" href="<?=HOST?>login">Перейти на страницу входа</a>
	</div>
	<input class="button button--enter" name="lost-password" type="submit" value="Восстановить пароль" />
</form>