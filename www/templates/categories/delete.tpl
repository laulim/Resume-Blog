<div class="container category-delete-page">
	<div class="row mt-40 justify-content-center">
		<div class="col-md-10 mb-120">
			<div class="title-1 mb-20">Удалить категорию</div>

			<p>Вы действительно хотите удалить категорию <strong><?=$cat['cat_title']?></strong> с id = <?=$cat['id']?>?</p>
			
			<form action="<?=HOST?>blog/category-delete?id=<?=$cat['id']?>" method="POST"  >
				<input type="submit" name="catDelete" class="button button--delete mt-20" value="Удалить">
				<a class="button ml-20" href="<?=HOST?>blog/categories">Отмена</a>
			</form>

			
		</div>
	</div>
</div>