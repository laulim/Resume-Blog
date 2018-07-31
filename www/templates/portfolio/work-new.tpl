<div class="container">
	<div class="row mb-100">
		<form id="validate-form" action="work-new" method="POST" enctype="multipart/form-data" >
			<div class="col-md-10 offset-1">
				<div class="title-1 mt-55 mb-15">Добавить работу</div>

				<?php require ROOT. "templates/_parts/errors.tpl" ?>
				
				<div class="title-8 mt-20 mb-10">Название</div>
				<input 
					class="input mb-5" type="text" name="title" placeholder="Введите название работы" 
					data-required="required" data-text-error="название работы" 
					value="<?=(isset($_POST['title'])) ? $_POST['title'] : ''?>" />

				<div class="title-8 mt-25 mb-5">Изображение </div>
				<div class="file-upload">
					<fieldset>
						<legend class="mb-10">
							<div class="title-8 mb-2"></div>
							<div class="legend__descr">Изображение jpg, jpeg или png, рекомендуемая ширина 920px и больше, высота от 530px и более, вес до 4Мб.</div>
						</legend>
						<input class="inputfile" id="#file-undefined" type="file" name="image"  />
						<label for="#file-undefined">Выбрать файл</label>
						<span>Файл не выбран</span>
					</fieldset>
				</div>

				<div class="title-8 mt-25 mb-10">Коротко о проекте</div>
				<textarea id="ckEditor" class="textarea" name="description" placeholder=""><?=(isset($_POST['description'])) ? $_POST['description'] : ''?></textarea>

				<div class="title-8 mt-25 mb-10">Результат</div>
				<textarea class="textarea" name="result" placeholder=""><?=(isset($_POST['result'])) ? $_POST['result'] : ''?></textarea>

				<div class="title-8 mt-25 mb-10">Технологии</div>
				<textarea id="ckEditor2" class="textarea" name="tecnologies" placeholder=""><?=(isset($_POST['tecnologies'])) ? $_POST['tecnologies'] : ''?></textarea>
				<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>

				<div class="row mt-25 mb-30">
					<div class="col-auto width">
						<div class="title-8 mb-10">Ссылка на проект</div>
						<input 
							class="input" type="text" name="demo" placeholder="Введите ссылку"
							value="<?=(isset($_POST['demo'])) ? $_POST['demo'] : ''?>" />
					</div>
					<div class="col-auto width">
						<div class="title-8 mb-10">Ссылка на GitHub</div>
						<input 
							class="input" type="text" name="github" placeholder="Введите ссылку"
							value="<?=(isset($_POST['github'])) ? $_POST['github'] : ''?>" />
					</div>
				</div>

				<input type="submit" name="workNew" class="button button--save mt-25 mr-25" value="Сохранить">
				<a class="button" href="<?=HOST?>portfolio">Отмена</a>
			</div>
		</form>
	</div>
</div>