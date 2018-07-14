<div class="header-admin">
	<div class="header-admin__user">
		<div class="avatar avatar--small">
			<?php if ($_SESSION['logged_user']['avatar_small'] != '') { ?>
				<img src="<?=HOST?>/usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" title="<?=$_SESSION['logged_user']['firstname']?> <?=$_SESSION['logged_user']['lastname']?>" />
			<?php } ?>
		</div>
		<div class="header-admin__user-data"><a class="header-admin__name" href="<?=HOST?>profile"><?=$_SESSION['logged_user']['firstname']?> <?=$_SESSION['logged_user']['lastname']?></a>
			<div class="badge">Администратор</div>
		</div>
	</div>
	<div class="admin-nav">
		<a class="admin-nav__link" href="<?=HOST?>"> <i class="fas fa-plus-circle link__icon"></i><span>Пост</span></a>
		<a class="admin-nav__link" href="<?=HOST?>"> <i class="fas fa-plus-circle link__icon"></i><span>Работа</span></a>
		<a class="admin-nav__link" href="<?=HOST?>"> <i class="fas fa-edit link__icon"></i><span>Обо мне</span></a>
		<a class="admin-nav__link" href="<?=HOST?>"> <i class="fas fa-edit link__icon"></i><span>Контакты</span></a>
		<a class="admin-nav__link" href="<?=HOST?>"> <i class="fas fa-envelope link__icon"></i><span>Сообщения</span></a>
	</div>
	<div class="admin-nav__exit">
		<a class="admin-nav__link" href="<?=HOST?>logout"> <i class="fas fa-sign-out-alt link__icon"></i><span>Выход</span></a>
	</div>
</div>