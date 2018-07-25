<div class="container pt-40 pb-100">
	<div class="row align-items-center">
		<div class="col">
			<div class="title-1 mb-30">Профиль</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-auto">
			<div class="avatar ">
				<?php if ($user->avatar != '') { ?>
					<img src="<?=HOST?>/usercontent/avatar/<?=$user->avatar?>" title="<?=$$user->firstname?> <?=$user->lastname?>" />
				<?php } ?>
			</div>
		</div>
		<div class="col">
			<div class="user-info">
				<div class="user-info__title">Имя и фамилия</div>
				<div class="user-info__desc"><?=$user->firstname?> <?=$user->lastname?></div>
			</div>
			<div class="user-info">
				<div class="user-info__title">Email </div>
				<a href="mailto:<?=$user->email?>" class="user-info__desc"><?=$user->email?></a>
			</div>
			<div class="user-info">
				<div class="user-info__title">Страна, Город </div>
				<div class="user-info__desc">
					<!-- Чтобы небыло запятой !! -->
					<?php if ($user->country != '' && $user->city != '') {
						echo $user->country . ", " . $user->city;
					} else if ($user->country != '' || $user->city != '') {
						echo $user->country . $user->city;
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