<div class="container">
	<div class="row mt-40 justify-content-center">
		<div class="col-md-10 mb-120">
			<div class="title-1 mb-20">Добавить пост</div>

			<?php require ROOT. "templates/_parts/errors.tpl" ?>

			<form id="enter-form" action="<?=HOST?>blog/post-new" method="POST" enctype="multipart/form-data" >

				<div class="title-8 mb-10 mt-20">Название</div>
				<input 
					class="input mb-10" 
					type="text" 
					name="postTitle" 
					placeholder="Введите название" 
					data-required="required" 
					data-text-error="название поста"
					value="<?=(isset($_POST['postTitle'])) ? $_POST['postTitle'] : ''?>"  
				/>

				<div class="title-8 mb-10 mt-20">Категория</div>
				<div class="select-list">
					<select class="select-list--select" name="postCat">
						<option disabled>--Выберите категорию--</option>
						<?php foreach ($cats as $cat): ?>
							<option value="<?=$cat['id']?>"><?=$cat['cat_title']?></option>
						<?php endforeach ?>
					</select>
				</div>
				

				<div class="file-upload mb-20 mt-20">
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
				<!-- <textarea id="ckEditor" class="textarea mb-10" name="postText" placeholder="Введите содержание" data-required="required" data-text-error="содержание поста" > -->
				<textarea id="ckEditor" class="textarea mb-10" name="postText" placeholder="Введите содержание" >
					<?=(isset($_POST['postText'])) ? $_POST['postText'] : ''?>
				</textarea>
				<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>

				<input type="submit" name="postNew" class="button button--save mt-20" value="Сохранить">

				<a class="button ml-20" href="<?=HOST?>blog">Отмена</a>
			</form>
		</div>
	</div>
</div>
