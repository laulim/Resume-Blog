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

					<a class="blog-post__info-item blog-post__info-item--comments">2 комментария</a>
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
			<a class="button" href="#"><i class="fas fa-arrow-left"></i>&nbsp;Назад</a>
			<a class="button" href="#">Вперед&nbsp;<i class="fas fa-arrow-right"></i></a></div>
	</div>
	<div class="row justify-content-center">
		<div class="col-md-10">
			<div class="title-2">2 комментария</div>
			<div class="comment-wrap">
				<div class="avatar avatar--small">
					<img src="<?=HOST?>templates/assets/img/avatars/avatar-2.jpg" title="Джон До" />
				</div>
				<div class="comment__content">
					<div class="comment__header">
						<div class="comment__user-name">Джон До</div>
						<div class="comment__date"><i class="far fa-clock"></i> 05 Мая 2017 года в 15:45</div>
					</div>
					<div class="comment__text">Замечательный парк, обязательно отправлюсь туда этим летом.</div>
				</div>
			</div>
			<div class="comment-wrap">
				<div class="avatar avatar--small">
					<img src="<?=HOST?>templates/assets/img/avatars/avatar-2.jpg" title="Джон До" />
				</div>
				<div class="comment__content">
					<div class="comment__header">
						<div class="comment__user-name">Джон До</div>
						<div class="comment__date"><i class="far fa-clock"></i> 05 Мая 2017 года в 15:45</div>
					</div>
					<div class="comment__text">Замечательный парк, обязательно отправлюсь туда этим летом.</div>
				</div>
			</div>
			<div class="title-2">Оставить комментарий</div>
			<div class="comment-add">
				<div class="comment-add__avatar">
					<div class="avatar avatar--small">
						<img src="<?=HOST?>templates/assets/img/avatars/avatar-1.jpg" title="Юрий Ключевский" />
					</div>
				</div>
				<form class="comment-add__form" id="form">
					<div class="title-6 mt-0 mb-2">Юрий Ключевский</div>
					<div class="error">
						<div class="error__title">Комментарий не может быть пустым.</div>
					</div>
					<textarea class="textarea" name="comment" placeholder="Присоединиться к обсуждению..."></textarea>
					<input class="button" type="submit" value="Опубликовать" name="post-comment" />
				</form>
			</div>
		</div>
	</div>
</div>