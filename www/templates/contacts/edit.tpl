	<?php 
	function dataFromPost ($fieldName) {
		global $contacts;
		echo isset($_POST[$fieldName]) ? @$_POST[$fieldName] : $contacts[$fieldName];
	}
	?>
<form class="container" action="<?=HOST?>contacts-edit" method="post" id="validate-form" />
	<div class="mt-80 title-1 mb-10">Редактировать данные</div>
	<?php require ROOT. "templates/_parts/errors.tpl" ?>

	<div class="row mt-15">
		<div class="col-md-3">
			<div class="title-6 ">Имя</div>
			<input 
				class="input mb-5" type="text" name="firstname" placeholder="Введите имя" 
				data-required="required" data-text-error="имя" 
				value="<?php dataFromPost("firstname"); ?>" />
		</div>
		<div class="col-md-3">
			<div class="title-6">Фамилия</div>
			<input 
				class="input mb-5" type="text" name="lastname" placeholder="Введите фамилию" 
				data-required="required" data-text-error="фамилию" 
				value="<?php dataFromPost("lastname"); ?>" />
		</div>
	</div>
	<div class="row mt-10">
		<div class="col-md-3">
			<div class="title-6">Email</div>
			<input 
				class="input mb-5" type="text" name="email" placeholder="Введите email" 
				data-required="required" data-text-error="email" 
				value="<?php dataFromPost("email"); ?>" />
		</div>
		<div class="col-md-3">
			<div class="title-6">Skype</div>
			<input 
				class="input mb-5" type="skype" name="skype" placeholder="Введите skype" 
				value="<?php dataFromPost("skype"); ?>" />
		</div>
	</div>
	<div class="row mt-10">
		<div class="col-md-3">
			<div class="title-6">Вконтакте</div>
			<input 
				class="input mb-5" type="text" name="vk" placeholder="Введите ссылку на профиль" 
				value="<?php dataFromPost("vk"); ?>"/>
		</div>
		<div class="col-md-3">
			<div class="title-6">Facebook</div>
			<input 
				class="input mb-5" type="text" name="fb" placeholder="Введите ссылку на профиль" 
				value="<?php dataFromPost("fb"); ?>" />
		</div>
		<div class="col-md-3">
			<div class="title-6">GitHub</div>
			<input 
				class="input mb-5" type="text" name="github" placeholder="Введите ссылку на профиль" 
				value="<?php dataFromPost("github"); ?>" />
		</div>
		<div class="col-md-3">
			<div class="title-6">Twitter</div>
			<input 
				class="input mb-5" type="text" name="twitter" placeholder="Введите ссылку на профиль" 
				value="<?php dataFromPost("twitter"); ?>" />
		</div>
	</div>
	<div class="row mt-10">
		<div class="col-md-3">
			<div class="title-6">Телефон</div>
			<input 
				class="input mb-5" type="tel" name="phone" placeholder="Введите телефон" 
				data-required="required" data-text-error="телефон" 
				value="<?php dataFromPost("phone"); ?>" />
		</div>
		<div class="col-md-3">
			<div class="title-6">Адрес</div>
			<input 
				class="input mb-5" type="text" name="address" placeholder="Введите адрес" 
				data-required="required" data-text-error="адрес" 
				value="<?php dataFromPost("address"); ?>" />
		</div>
	</div>
	<div class="row mt-25 mb-120">
		<div class="col-md-2">
			<input class="button button--save" type="submit" name="contactsUpdate" value="Сохранить">
		</div>
		<div class="col-md-2 rml-25">
			<a class="button" href="<?=HOST?>contacts">Отмена</a>
		</div>
	</div>
</form>