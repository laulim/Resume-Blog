<div class="container pt-75 pb-80">
	<div class="row">

		<div class="col-9 offset-3 resume">
			<div class="title-1 mt-0 mb-35">Опыт работы</div>
			
			<?php if (isAdmin()): ?>
			<a class="button button--edit" href="<?HOST?>about/edit-jobs">Редактировать</a>
			<?php endif ?>

			<?php foreach ($jobs as $job):
				include ROOT. "templates/about/_job-card.tpl";
			endforeach ?>

		</div>

	</div>
</div>