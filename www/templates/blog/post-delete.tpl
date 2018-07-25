<div class="container category-delete-page">
	<div class="row mt-40 justify-content-center">
		<div class="col-md-10 mb-120">
			<div class="title-1 mb-20">Удалить пост</div>

			<p>Вы действительно хотите удалить пост 
				<strong>
					<?=$post['title']?>
				</strong> 
				с id = <?=$post['id']?>?
			</p>
			
			<form action="<?=HOST?>blog/post-delete?id=<?=$post['id']?>" method="POST"  >
				<input type="submit" name="postDelete" class="button button--delete button--delete--big mt-20" value="Удалить">
				<a class="button ml-20" href="<?=HOST?>blog/post?id=<?=$post['id']?>">Отмена</a>
			</form>

			
		</div>
	</div>
</div>