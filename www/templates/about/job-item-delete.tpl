<div class="container category-delete-page">
	<div class="row mt-40 justify-content-center">
		<div class="col-md-10 mb-120">
			<div class="title-1 mb-20">Удалить место работы</div>

			<p>Вы действительно хотите удалить место работы с id = <?=$job->id?>?</p>
				
			<div class="user-message mt-10 mb-10">
				<?php include ROOT. "templates/about/_job-card.tpl"; ?>
			</div>

			<form action="job-item-delete?id=<?=$job->id?>" method="POST"  >
				<input type="submit" name="jobDelete" class="button button--delete button--delete--big mt-20" value="Удалить">
				<a class="button ml-20" href="<?=HOST?>about/edit-jobs?>">Отмена</a>
			</form>

			
		</div>
	</div>
</div>