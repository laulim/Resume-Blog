<div class="container">
	<div class="row mt-40 justify-content-center">
		<div class="col-md-10 mb-120">
			<div class="title-1 mb-20">Редактировать пост</div>

			<?php 
			// echo "<pre>";
			// print_r($post);
			// echo "</pre>";
			// echo "<pre>";
			// print_r($cats);
			// echo "</pre>";
			?>

			<?php require ROOT. "templates/_parts/errors.tpl" ?>

			<form id="enter-form" action="<?=HOST?>blog/post-edit?id=<?=$post['id']?>" method="POST" enctype="multipart/form-data" >

				<div class="title-8 mb-10 mt-20">Название</div>
				<input 
					class="input mb-10" 
					type="text" 
					name="postTitle" 
					placeholder="Введите название" 
					data-required="required" 
					data-text-error="название поста" 
					value="<?=(isset($_POST['postTitle'])) ? $_POST['postTitle'] : $post['title']?>" 
				/>

				<div class="title-8 mb-10 mt-20">Категория</div>
				<div class="select-list">
					<select class="select-list--select" name="postCat">
						<option disabled>--Выберите категорию--</option>
						<?php foreach ($cats as $cat): ?>
							<option 
								value="<?=$cat['id']?>" 
								<?=($post['cat'] == $cat['id'])? "selected" : "" ?> >
								<?=$cat['cat_title']?>
							</option>
						<?php endforeach ?>
					</select>
				</div>
				

				<div class="file-upload mb-20 mt-20">
					<div class="title-8">Изображение</div>

					<?php if ($post['post_img'] != '') { ?>
						<div class="file-upload__thumb file-upload__thumb--post-img mt-15">
							<img src="<?=HOST?>/usercontent/blog/<?=$post['post_img_small']?>" />
							<div class="file-upload__thumb-delete file-upload__thumb-delete--small text-center">Изображение <br>будет удалено</div>
							<label class="button button--delete button--small">
								<input id="delete-avatar" type="checkbox" class="checkbox__input" name="deleteImg">
								<span>Удалить</span>
							</label>
						</div>
					<?php } ?>

					<fieldset>
						<div class="legend__descr">
							<p>Изображение jpg или png, рекомендуемая ширина 920px и больше, высота от 620px и более, вес до 4 Мб.</p>
						</div>
						<input class="inputfile" id="#file-3" type="file" name="postImg" data-multiple-caption="{count} файлов выбрано" multiple="multiple" />
						<label for="#file-3">Выбрать файл</label><span>Файл не выбран</span>
					</fieldset>

				</div>

				<div class="title-8 mb-10">Содержание</div>
				<textarea 
					id="ckEditor" 
					class="textarea mb-10" 
					name="postText" 
					placeholder="Введите содержание" 
					data-required="required" 
					data-text-error="содержание поста" 
				/>
					<?=(isset($_POST['postText'])) ? $_POST['postText'] : $post['text']?>
				</textarea>
				<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>

				<input type="submit" name="postUpdated" class="button button--save mt-20" value="Сохранить изменения">

				<a class="button ml-20" href="<?=HOST?>blog/post?id=<?=$post['id']?>">Отмена</a>
			</form>
		</div>
	</div>
</div>
