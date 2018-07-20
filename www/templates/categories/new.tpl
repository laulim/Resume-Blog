<div class="container">
	<div class="row mt-40 justify-content-center">
		<div class="col-md-10 mb-120">
			<div class="title-1 mb-20">Создать новую категорию</div>

			<?php require ROOT. "templates/_parts/errors.tpl" ?>

			<form id="enter-form" action="<?=HOST?>blog/category-new" method="POST"  >

				<div class="title-8 mb-10 mt-20">Название категории</div>
				<input class="input mb-10" type="text" name="catTitle" placeholder="Введите название" data-required="required" data-text-error="название категории" />

				<input type="submit" name="catNew" class="button button--save mt-20" value="Сохранить">

				<a class="button ml-20" href="<?=HOST?>blog/categories">Отмена</a>
			</form>
		</div>
	</div>
</div>