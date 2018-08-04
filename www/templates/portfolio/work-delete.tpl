<div class="container category-delete-page">
	<div class="row mt-40 justify-content-center">
		<div class="col-md-10 mb-120">
			<div class="title-1 mb-20">Удалить работу</div>

			<p>Вы действительно хотите удалить работу 
				<strong>
					<?=$work['title']?>
				</strong> 
				с id = <?=$work['id']?>?
			</p>
			
			<form action="work-delete?id=<?=$work['id']?>" method="POST"  >
				<input type="submit" name="workDelete" class="button button--delete mt-20" value="Удалить">
				<a class="button ml-20" href="<?=HOST?>blog/post?id=<?=$post['id']?>">Отмена</a>
			</form>

			
		</div>
	</div>
</div>