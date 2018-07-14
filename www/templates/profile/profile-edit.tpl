<div class="container pt-40 pb-100">
	<h1 class="title-1">Редактировать профиль</h1>

	<?php 
	// echo "<pre>";
	// print_r($_POST);
	// echo "</pre>";
	?>
	<?php require ROOT. "templates/_parts/errors.tpl" ?>

	<form id="user-data-form" enctype="multipart/form-data" action="<?=HOST?>profile-edit" method="POST" >
		<div class="row mb-10">
			<div class="col-4">
				<label class="title-6">Имя
					<input class="input mt-10 mb-20" type="text" name="firstname" placeholder="Введите имя" value="<?=$currentUser->firstname?>" />
				</label>
				<label class="title-6">Фамилия
					<input class="input mt-10 mb-20" type="text" name="lastname" placeholder="Введите фамилию" value="<?=$currentUser->lastname?>" />
				</label>
				<label class="title-6">Email
					<input class="input mt-10 mb-20" type="email" name="email" placeholder="Введите email" value="<?=$currentUser->email?>" />
				</label>
			</div>
		</div>
		<div class="row mb-20">
			<div class="col-md-auto">
				<div class="file-upload">
					<fieldset>
						<div class="title-8 mb-2">Фотография</div>
						<div class="legend__descr">
							<p>Изображение jpg или png, размером больше чем 100х100 пикселей, и весом до 2Мб.</p>
						</div>
						<input class="inputfile" id="#file-1" type="file" name="avatar" />
						<label for="#file-1">Выбрать файл</label>
						<span>Файл не выбран</span>
					</fieldset>
				</div>
			</div>
		</div>
		<div class="row mb-30">
			<div class="col-4">
				<label class="title-6">Страна
					<input class="input mt-10 mb-20" type="text" name="country" placeholder="Введите страну" value="<?=$currentUser->country?>" />
				</label>
				<label class="title-6">Город
					<input class="input mt-10" type="text" name="city" placeholder="Введите город" value="<?=$currentUser->city?>" />
				</label>
			</div>
		</div>
		<div class="row">
			<div class="col-3 space-between">
				<input class="button button--save" type="submit" name="profile-update" value="Сохранить" />
				<a class="button" href="<?=HOST?>profile">Отмена</a>
			</div>
		</div>
	</form>
</div>