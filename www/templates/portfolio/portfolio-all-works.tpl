<div class="container mb-70">
	<div class="row mb-20 mt-40 align-items-center">
		<?php if (isset($_GET['result'])) {
			include ROOT . "templates/portfolio/_results.tpl";
		} ?>
		<div class="col">
			<div class="title-1">Работы
				<span class="title-1-medium">&nbsp которые сделал я и моя команда</span>
			</div>
		</div>
		<?php if (isAdmin()): ?>
			<div class="col-auto">
				<a class="button button--edit" href="<?=HOST?>portfolio/work-new">Добавить работу</a>
			</div>
		<?php endif ?>
	</div>
	<div class="row">

		<?php foreach ($works as $work):
			include ROOT . 'templates/_parts/_work-card.tpl';
		 endforeach ?>

	</div>
</div>