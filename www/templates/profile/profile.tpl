<div class="container pt-40 pb-100">
	<div class="row align-items-center">
		<div class="col">
			<div class="title-1 mb-30">Профиль</div>
		</div>
		<?php 
		// echo "<pre>";
		// print_r($_SESSION);
		// echo "</pre>";
		?>
		<div class="col text-right">
			<a class="button" href="<?=HOST?>profile-edit">Редактировать</a>
		</div>
	</div>
	<div class="row">
		<div class="col-md-auto">
			<div class="avatar ">
				<?php if ($_SESSION['logged_user']['avatar'] != '') { ?>
					<img src="<?=HOST?>/usercontent/avatar/<?=$currentUser->avatar?>" title="<?=$currentUser->firstname?> <?=$currentUser->lastname?>" />
				<?php } ?>
			</div>
		</div>
		<div class="col">
			<div class="user-info">
				<div class="user-info__title">Имя и фамилия</div>
				<div class="user-info__desc"><?=$currentUser->firstname?> <?=$currentUser->lastname?></div>
			</div>
			<div class="user-info">
				<div class="user-info__title">Email </div>
				<a href="mailto:<?=$currentUser->email?>" class="user-info__desc"><?=$currentUser->email?></a>
			</div>
			<div class="user-info">
				<div class="user-info__title">Страна, Город </div>
				<div class="user-info__desc">
					<?php if ($currentUser->country != '' && $currentUser->city != '') {
						echo $currentUser->country . ", " . $currentUser->city;
					} ?>						
				</div>
			</div>
		</div>
	</div>
	<div class="title-2">Комментарии пользователя </div>
	<div class="comment-wrap comment-wrap--no-avatar">
		<div class="comment__content">
			<div class="comment__header">
				<a class="comment__related-to" href="#">Поездка в LA</a>
				<div class="comment__date"><i class="far fa-clock"></i> 05 Мая 2017 года в 15:45</div>
			</div>
			<div class="comment__text">Замечательный парк, обязательно отправлюсь туда этим летом.</div>
		</div>
	</div>
	<div class="comment-wrap comment-wrap--no-avatar">
		<div class="comment__content">
			<div class="comment__header">
				<a class="comment__related-to" href="#">Ноутбук для веб-разработчиков</a>
				<div class="comment__date"><i class="far fa-clock"></i> 15 Мая 2017 года в 10:02</div>
			</div>
			<div class="comment__text">Замечательный парк, обязательно отправлюсь туда этим летом.</div>
		</div>
	</div>
	<div class="comment-wrap comment-wrap--no-avatar">
		<div class="comment__content"> 
			<div class="comment__header">
				<a class="comment__related-to" href="#">Настройка Sublime</a>
				<div class="comment__date"><i class="far fa-clock"></i> 12 Мая 2017 года в 20:39</div>
			</div>
			<div class="comment__text">Замечательный парк, обязательно отправлюсь туда этим летом.</div>
		</div>
	</div>
</div>