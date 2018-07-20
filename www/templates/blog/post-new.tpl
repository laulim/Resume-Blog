<div class="container">
	<div class="row mt-40 justify-content-center">
		<div class="col-md-10 mb-120">
			<div class="title-1 mb-20">Добавить пост</div>

			<?php 
			// echo "<pre>";
			// print_r($_POST);
			// echo "</pre>";
			?>

			<?php require ROOT. "templates/_parts/errors.tpl" ?>

			<form action="<?=HOST?>blog/post-new" method="POST" enctype="multipart/form-data" >

				<div class="title-8 mb-10 mt-20">Название</div>
				<input class="input mb-30" type="text" name="postTitle" placeholder="Введите название поста" />

				<div class="file-upload mb-20">
					<fieldset>
						<div class="title-8 mb-2">Изображение</div>
						<div class="legend__descr">
							<p>Изображение jpg или png, рекомендуемая ширина 920px и больше, высота от 620px и более, вес до 4 Мб.</p>
						</div>
						<input class="inputfile" id="#file-3" type="file" name="postImg" data-multiple-caption="{count} файлов выбрано" multiple="multiple" />
						<label for="#file-3">Выбрать файл</label><span>Файл не выбран</span>
					</fieldset>
				</div>

				<div class="title-8 mb-10">Содержание</div>
				<textarea class="textarea mb-35" name="postText" placeholder="Введите содержание"></textarea>

				<input type="submit" name="postNew" class="button button--save" value="Сохранить">

				<a class="button ml-20" href="<?=HOST?>blog">Отмена</a>
			</form>
		</div>
	</div>
</div>