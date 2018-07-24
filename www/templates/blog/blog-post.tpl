<div class="container mt-50 mb-120 blog-post-page">
	<div class="row justify-content-center">
		<div class="col-md-10">

			<?php if (isset($_GET['result'])) {
				include ROOT . "templates/blog/_results.tpl";
			} ?>

			<div class="blog-post">
				<div class="row">
					<div class="col">
						<h1 class="title-1 mt-0"><?=$post['title']?></h1>
					</div>

					<?php if (isAdmin()): ?>
						<div class="col-auto">
							<a class="button button--edit" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>" />Редактировать</a>
							<a class="button button--delete" href="<?=HOST?>blog/post-delete?id=<?=$post['id']?>" />Удалить</a>
						</div>
					<?php endif ?>

				</div>

				<div class="blog-post__info mb-5">
					<a class="blog-post__info-item blog-post__info-item--name">
						<?=$post['firstname']?> <?=$post['lastname']?>
					</a>

					<a class="blog-post__info-item blog-post__info-item--tag">
						<?=$post['cat_title']?>
					</a>

					<span class="blog-post__info-item blog-post__info-item--date">
						<?=rus_date("j F Y H:i", strtotime($post['date_time']))?>
					</span>
					
					<?php if (count($comments) > 0): ?>
					<a href="#comments" class="blog-post__info-item blog-post__info-item--comments">
						<?commentNumber( count($comments) )?>
					</a>
					<?php endif ?>
				</div>

				<?php if ($post['update_time'] != ''): ?>
					<div class="blog-post__info mb-5">
						<span class="blog-post__info-item blog-post__info-item--date">
							Запись обновлена <?=rus_date("j F Y H:i", strtotime($post['update_time']))?>
						</span>
					</div>
				<?php endif ?>

				<?php if ($post['post_img'] != ''): ?>
					<div class="blog-post__img">
						<img src="<?=HOST?>usercontent/blog/<?=$post['post_img']?>" alt="<?=$post['title']?>" />
					</div>
				<?php endif ?>
				
				<div class="blog-post__content user-content mt-20 mb-20">
					<?=$post['text']?>
				</div>
			</div>
		</div>
		<div class="col-md-10 buttons-flex">
			<a class="button <?=($nextId == '') ? 'button--off' : ''?>"
				<?php if ($nextId != ''): ?>
					href="<?=HOST?>blog/post?id=<?=$nextId?>"
				<?php endif ?>
			/>
				<i class="fas fa-arrow-left"></i>&nbsp;Назад
			</a>

			<a class="button <?=($prevId == '') ? 'button--off' : ''?>"
				<?php if ($prevId != ''): ?>
					href="<?=HOST?>blog/post?id=<?=$prevId?>"
				<?php endif ?>
			/>
				Вперед&nbsp;<i class="fas fa-arrow-right"></i>
			</a>
		</div>
	</div>
	<div class="row justify-content-center">
		<pre>
			<?php print_r($comments); ?>
		</pre>

		<div class="col-md-10">
			<?php if (count($comments) > 0) { ?>
			<div id="comments" class="title-2"><?commentNumber( count($comments) )?></div>
				<?php foreach ($comments as $comment) {
					include ROOT . "templates/blog/_comment-card.tpl";
				} ?>
			<?php } ?>
			
			<?php include ROOT . "templates/blog/_add-comment-form.tpl" ?>
			
		</div>
	</div>
</div>