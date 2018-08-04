<div class="container edit-about-me mt-40 mb-100">
	<div class="row">
		<div class="col">
			<form id="validate-form" action="edit-text" method="POST" enctype="multipart/form-data">
				<h1 class="title-1 mb-30">Редактировать - Обо Мне</h1>

				<?php require ROOT. "templates/_parts/errors.tpl" ?>

				<div class="title-6">Имя, фамилия</div>
				<input 
					class="input mb-5" type="text" name="name" placeholder="Введите имя и фамилию" 
					data-required="required" data-text-error="имя и фамилию" 
					value="<?=(isset($_POST['name'])) ? $_POST['name'] : $about->name ?>" />

				<div class="file-upload">
					<div class="title-6 mb-10">Фотография</div>

					<fieldset>
						<div class="legend__descr mb-10">
							Изображение jpg или png, размером больше чем 205х205 пикселей, и весом до 2Мб.
						</div>
						<input class="inputfile" id="#file-1" type="file" name="photo" />
						<label for="#file-1">Выбрать файл</label>
						<span>Файл не выбран</span>
					</fieldset>
					
					<?php if ($about->photo != ''): ?>
					<div class="file-upload__thumb file-upload__thumb--about-avatar mt-10 mb-30">
						<div class="avatar">
							<img src="<?=HOST?>usercontent/about/<?=$about->photo?>" title="<?=$about->name?>" />
						</div>
						<div class="file-upload__thumb-delete text-center">Фотография <br>будет удалена</div>
						<label class="button button--delete button--small">
							<input id="delete-avatar" type="checkbox" class="checkbox__input" name="deletePhoto">
							<span>Удалить</span>
						</label>
					</div>
					<?php endif ?>
				</div>

				<div class="title-6">Информация на главной</div>
				<textarea id="ckEditor" class="textarea" name="description" placeholder="Оставьте Ваше сообщение"><?=(isset($_POST['description'])) ? $_POST['description'] : $about->description ?></textarea>
				<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>

				<input class="button button--save mt-30" type="submit" name="textUpdate" value="Сохранить">
				<a class="button ml-20" href="<?=HOST?>about">Отмена</a>
			</form>
		</div>
	</div>
</div>