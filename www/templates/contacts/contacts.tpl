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
			<div class="title-1">Контакты</div>
			<table class="contacts-table text-left">
				<tr>
					<th class="contacts-table__index">Email</th>
					<td class="contacts-table__value pb-10">
						<a href="mailto:webdev-ninja@mail.ru">webdev-ninja@mail.ru</a>
					</td>
				</tr>
				<tr>
					<th class="contacts-table__index">Skype</th>
					<td class="contacts-table__value pb-10">
						<a href="skype:webdev-ninja?chat">webdev-ninja</a>
					</td>
				</tr>
				<tr>
					<th class="contacts-table__index" rowspan="2">Социальные сети</th>
					<td class="contacts-table__value contacts-table__value--bold pb-10">
						<a href="#">Профиль Вконтакте</a>
					</td>
				</tr>
				<tr>
					<td class="contacts-table__value contacts-table__value--bold pb-20">
						<a href="#">Профиль Facebook</a>
					</td>
				</tr>
				<tr>
					<th class="contacts-table__index">Телефон</th>
					<td class="contacts-table__value pb-10">+595-456-123</td>
				</tr>
				<tr>
					<th class="contacts-table__index">Адрес</th>
					<td class="contacts-table__value">Россия, Московская обл. г.Зеленоград</td>
				</tr>
			</table>
		</div>
		<div class="col-4 offset-1">
			<div class="title-1">Связаться со мной</div>
			<form class="contact-form">
				<input class="input" type="text" name="firstname" placeholder="Введите имя" />
				<input class="input" type="text" name="email" placeholder="Email" />
				<textarea class="textarea" name="message" placeholder="Сообщение"></textarea>
				<div class="file-upload mt-20">
					<fieldset>
						<legend>
							<div class="title-8 mb-2">Прикрепить файл</div>
							<div class="legend__descr mb-10">jpg, png, pdf, doc, весом до 2Мб.</div>
						</legend>
						<input class="inputfile" id="#file-1" type="file" name="file-1" data-multiple-caption="{count} файлов выбрано" multiple="multiple" />
						<label for="#file-1">Выбрать файл</label><span>Файл не выбран</span>
					</fieldset>
				</div>
				<input class="button button--save" type="submit" value="Отправить" />
			</form>
		</div>
	</div>
</div>
<div class="container-fluid px-0">
	<div class="contacts-map" id="map"></div>
</div>
<script src="<?=HOST?>templates/assets/js/google-map.js"></script>