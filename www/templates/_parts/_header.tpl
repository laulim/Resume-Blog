<?php 

if (isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 &&  $_SESSION['role'] == 'admin') {
	include ROOT ."templates/_parts/_admin-panel.tpl";
}

// include ROOT ."templates/_parts/_admin-panel.tpl";

// echo "<pre>";
// print_r($_SESSION);
// echo "</pre>";
?>

<header class="header-bg">
	<div class="header">
		<div class="header__top">
			<?php include ROOT . "templates/_parts/_header-logo.tpl"; ?>
			
			<?php if (isset($_SESSION['logged_user']) && $_SESSION['login'] == 1 ) {
				// user on site
				if ($_SESSION['role'] != 'admin') {
					// user on site - NO admin
					include ROOT . "templates/_parts/_header-user-profile.tpl";
				} 
			} else {
				// no user
				include ROOT . "templates/_parts/_header-user-login-links.tpl";
			}?>
			
		</div>
		<?php include ROOT . "templates/_parts/_header-nav.tpl"; ?>
	</div>
</header>