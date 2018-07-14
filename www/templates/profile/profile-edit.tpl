<div class="container pt-40 pb-100">
	<h1 class="title-1 mb-10">Редактировать профиль</h1>

	<?php 
	// echo "<pre>";
	// print_r($_POST);
	// echo "</pre>";
	?>
	<div class="row">
		<div class="col-4">
			<?php require ROOT. "templates/_parts/errors.tpl" ?>
		</div>	
	</div>
	<form id="enter-form" enctype="multipart/form-data" action="<?=HOST?>profile-edit" method="POST" >
		<div class="row mb-10 mt-10">
			<div class="col-4">
				<div class="title-6 mt-20">Имя</div>
				<input class="input mb-5" type="text" name="firstname" placeholder="Введите имя" value="<?=$currentUser->firstname?>" data-required="required" data-text-error="имя" />
				
				<div class="title-6 mt-20">Фамилия</div>
				<input class="input mb-5" type="text" name="lastname" placeholder="Введите фамилию" value="<?=$currentUser->lastname?>" data-required="required" data-text-error="фамилию" />
				
				<div class="title-6 mt-20">Email</div>
				<input class="input mb-5" type="text" name="email" placeholder="Введите email" value="<?=$currentUser->email?>" data-required="required" data-text-error="email" />
			</div>
		</div>
		<div class="row mt-20">
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
					<?php if ($_SESSION['logged_user']['avatar'] != '') { ?>
						<div class="file-upload__thumb">
							<img src="<?=HOST?>/usercontent/avatar/<?=$currentUser->avatar?>" />
							<div class="file-upload__thumb-delete text-center">Аватар <br>будет <br>удален</div>
							<label class="button button--delete">
								<input id="delete-avatar" type="checkbox" class="checkbox__input" name="deleteAvatar">
								Удалить
							</label>
						</div>
					<?php } ?>
				</div>
			</div>
		</div>
		<div class="row mb-30">
			<div class="col-4">
				<div class="title-6 mt-10 ">Страна</div>
				<input class="input mb-5" type="text" name="country" placeholder="Введите страну" value="<?=$currentUser->country?>" />
				
				<div class="title-6 mt-20">Город</div>
				<input class="input mb-5" type="text" name="city" placeholder="Введите город" value="<?=$currentUser->city?>" />
				
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