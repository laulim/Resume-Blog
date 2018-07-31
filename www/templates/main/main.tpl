<div class="container mt-80 mb-80">
	<div class="row resume resume--text">

		<div class="col-3">
			<div class="avatar ">
				<img src="<?=HOST?>usercontent/about/<?=$about->photo?>" title="<?=$about->name?>" />
			</div>
		</div>

		<div class="col-9">
			<a class="button" href="<?=HOST?>about">Подробнее</a>
			
			<div class="title-1 mb-5 mt-0"><?=$about->name?></div>

			<div class="user-content about-text">
				<?=$about->description?>
			</div>
		</div>
	</div>
</div>

<div class="hr-line mb-80 mt-80"></div>

<!-- Работы -->
<div class="container mb-30">
	<h1 class="title-1">Новые <a href="<?=HOST?>portfolio">работы</a></h1>

	<div class="row mb-50 mt-20">
		<?php foreach ($works as $work) { 
			include ROOT . "templates/_parts/_work-card.tpl";
		} ?>
	</div>
</div>

<div class="container mb-80">
	<h1 class="title-1 mb-40">Новые записи в <a href="<?=HOST?>blog">блоге</a></h1>

	<div class="row mb-50 mt-20">
		<?php foreach ($posts as $post) { 
			include ROOT . "templates/_parts/_blog-card.tpl";
		} ?>
	</div>
</div>