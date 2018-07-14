<form class="login-page__form text-center" id="enter-form" method="POST" action="<?=HOST?>login">
	<div class="title-1">Вход на сайт</div>

	<?php require ROOT. "templates/_parts/errors.tpl" ?>

	<input class="input" type="text" name="email" placeholder="Email" data-required="required" data-text-error="email" value="info@mail.com" />
	<input class="input" type="password" name="password" placeholder="Пароль" data-required="required" data-text-error="пароль" value="123456" />
	<div class="login-page__form-helpers">
		<label class="checkbox__label">
			<input class="checkbox__input" type="checkbox" name="checkbox"/><span class="checkbox__type"></span>&nbsp;Запомнить меня
		</label>
		<a class="login-page__link" href="<?=HOST?>lost-password">Забыл пароль</a>
	</div>
	<input class="button button--enter" name="login" type="submit" value="Войти" />
</form>