<div class="container pt-80 pb-55">
	<div class="row resume resume--text">

		<div class="col-3">
			<div class="avatar ">
				<img src="<?=HOST?>usercontent/about/<?=$about->photo?>" title="<?=$about->name?>" />
			</div>
		</div>

		<div class="col-9">
			<?php if (isAdmin()): ?>
				<a class="button button--edit" href="<?HOST?>about/edit-text">Редактировать</a>
			<?php endif ?>

			<div class="title-1 mb-5 mt-0"><?=$about->name?></div>

			<div class="user-content about-text">
				<?=$about->description?>
			</div>
		</div>
	</div>
</div>