<div class="container mb-120">
	<div class="row mb-20 mt-40 align-items-center">
		<div class="col-md-8">
			<div class="title-1">Блог веб-разработчика</div>
		</div>
		<div class="col-md-4 text-right">
			<a class="button button--edit" href="<?=HOST?>blog/post-new">Добавить пост</a>
		</div>
	</div>

	<div class="row mb-50">
		<?php foreach ($posts as $post) { 
			include ROOT . "templates/_parts/_blog-card.tpl";
		} ?>
	</div>
</div>