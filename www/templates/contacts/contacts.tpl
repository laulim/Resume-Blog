<div class="container pt-55 pb-80">
	<div class="row justify-content-end">
		<?php if (isAdmin()): ?>
		<div class="col-md-auto">
			<a class="button button--edit" href="<?=HOST?>contacts-edit">Редактировать</a>
		</div>
		<div class="col-md-auto">
			<a class="button" href="<?=HOST?>messages">Сообщения</a>
		</div>
		<?php endif ?>
	</div>
	<div class="row">
		<div class="col-5">
			<h2 class="title-1">Контакты</h2>
			<?php if ($contacts['firstname'] != ''): ?>	
			<div class="row contacts-table mb-10">
				<div class="col-6 contacts-table__index">Имя</div>
				<div class="col-6 contacts-table__value">
					<?=$contacts['firstname']?>
				</div>
			</div>
			<?php endif ?>
			<?php if ($contacts['lastname'] != ''): ?>	
			<div class="row contacts-table mb-10">
				<div class="col-6 contacts-table__index">Фамилия</div>
				<div class="col-6 contacts-table__value">
					<?=$contacts['lastname']?>
				</div>
			</div>
			<?php endif ?>
			<?php if ($contacts['email'] != ''): ?>	
			<div class="row contacts-table mb-10">
				<div class="col-6 contacts-table__index">Email</div>
				<div class="col-6 contacts-table__value">
					<a target="_blank" href="mailto:<?=$contacts['email']?>"><?=$contacts['email']?></a>
				</div>
			</div>
			<?php endif ?>
			<?php if ($contacts['skype'] != ''): ?>
			<div class="row contacts-table mb-10">
				<div class="col-6 contacts-table__index">Skype</div>
				<div class="col-6 contacts-table__value">
					<a target="_blank" href="skype:<?=$contacts['skype']?>?chat"><?=$contacts['skype']?></a>
				</div>
			</div>
			<?php endif ?>
			<?php if ($contacts['vk'] != '' || $contacts['fb'] != '' || $contacts['twitter'] != ''): ?>	
			<div class="row contacts-table mb-10">
				<div class="col-6 contacts-table__index">Социальные сети</div>
				<div class="col-6 contacts-table__value contacts-table__value--bold">
					<?php if ($contacts['vk'] != ''): ?>
					<a target="_blank" class="mb-10" href="<?=$contacts['vk']?>">Профиль Вконтакте</a>
					<?php endif ?>
					<?php if ($contacts['fb'] != ''): ?>
					<a target="_blank" class="mb-10" href="<?=$contacts['fb']?>">Профиль Facebook</a>	
					<?php endif ?>
					<?php if ($contacts['twitter'] != ''): ?>
					<a target="_blank" class="mb-10" href="<?=$contacts['twitter']?>">Профиль Twitter</a>
					<?php endif ?>
				</div>
			</div>
			<?php endif ?>
			<?php if ($contacts['github'] != ''): ?>
			<div class="row contacts-table mb-10">
				<div class="col-6 contacts-table__index">Github</div>
				<div class="col-6 contacts-table__value">
					<a target="_blank" href="https://github.com/<?=$contacts['github']?>"><?=$contacts['github']?></a>
				</div>
			</div>
			<?php endif ?>
			<?php if ($contacts['phone'] != ''): ?>
			<div class="row contacts-table mb-10">
				<div class="col-6 contacts-table__index">Телефон</div>
				<div class="col-6 contacts-table__value">
					<?=$contacts['phone']?>
				</div>
			</div>
			<?php endif ?>
			<?php if ($contacts['address'] != ''): ?>
			<div class="row contacts-table mb-10">
				<div class="col-6 contacts-table__index">Адрес</div>
				<div class="col-6 contacts-table__value">
					<?=$contacts['address']?>
				</div>
			</div>
			<?php endif ?>
		</div>
		<div class="col-4 offset-1">
			<h2 class="title-1">Связаться со мной</h2>
			<?php require ROOT. "templates/_parts/success.tpl" ?>
			<?php require ROOT. "templates/_parts/errors.tpl" ?>
			<form class="contact-form" id="validate-form" method="POST" action="<?=HOST?>contacts" enctype="multipart/form-data">
				<input 
					class="input" type="text" name="name" placeholder="Введите имя"
					data-required="required" data-text-error="имя"/>
				<input 
					class="input" type="text" name="email" placeholder="Email"
					data-required="required" data-text-error="email" />
				<textarea 
					class="textarea mb-10" name="message" placeholder="Сообщение"
					data-required="required" data-text-error="текст сообщения"></textarea>
				<div class="file-upload mt-10">
					<fieldset>
						<legend>
							<div class="title-8 mb-2">Прикрепить файл</div>
							<div class="legend__descr mb-10">jpg, png, gif, pdf, doc, весом до 4Мб.</div>
						</legend>
						<input class="inputfile" id="#file-1" type="file" name="userFile" />
						<label for="#file-1">Выбрать файл</label>
						<span>Файл не выбран</span>
					</fieldset>
				</div>
				<input class="button button--save mt-5" type="submit" name="newMessage" value="Отправить" />
			</form>
		</div>
	</div>
</div>
<div class="container-fluid px-0">
	<div class="contacts-map" id="map"></div>
</div>
<script type="text/javascript" async defer src="https://maps.googleapis.com/maps/api/js?key=
AIzaSyDbkknSE6a4VzmdR9ZeZoiT2w509ybxV9U&callback=initMap"></script>
<script src="<?=HOST?>templates/assets/js/google-map.js"></script>
