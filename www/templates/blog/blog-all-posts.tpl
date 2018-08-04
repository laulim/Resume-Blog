<div class="container mb-80">
	<div class="row mt-40 align-items-center">
		<div class="col">
			<div class="title-1">Блог веб-разработчика</div>
		</div>
		<?php if (isAdmin()): ?>
			<div class="col-auto">
				<a class="button button--edit" href="<?=HOST?>blog/post-new">Добавить пост</a>
			</div>	
		<?php endif ?>
	</div>
		<?php if (isset($_GET['result'])) {
			include ROOT . "templates/blog/_results.tpl";
		} ?>

	<div class="row mb-50 mt-20">
		<?php foreach ($posts as $post) { 
			include ROOT . "templates/_parts/_blog-card.tpl";
		} ?>
	</div>
</div>