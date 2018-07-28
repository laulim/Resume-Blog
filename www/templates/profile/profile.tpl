<div class="container pt-40 pb-100">
	<div class="row align-items-center">
		<div class="col">
			<div class="title-1 mb-30">Профиль</div>
		</div>
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
					<!-- Чтобы небыло запятой !! -->
					<?php if ($currentUser->country != '' && $currentUser->city != '') {
						echo $currentUser->country . ", " . $currentUser->city;
					} else if ($currentUser->country != '' || $currentUser->city != '') {
						echo $currentUser->country . $currentUser->city;
					}?>						
				</div>
			</div>
		</div>
	</div>
	<?php if (count($comments) > 0): ?>
		
	<div class="title-2">Комментарии пользователя </div>

	<?php foreach ($comments as $comment ): 
		include ROOT . "templates/profile/_user-comments.tpl";
	 endforeach ?>
	<?php endif ?>
</div>