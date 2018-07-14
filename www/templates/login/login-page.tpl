
<body class="login-page">
	<div class="login-page-content">
		<div class="login-page">
			<div class="container-fluid pt-45 pl-100 pr-50">
				<div class="row justify-content-between">
					<div class="col-md-auto">
						<div class="logo">
							<div class="logo__icon"><i class="far fa-paper-plane"></i></div>
							<div class="logo__text"><a class="header-logo__title" href="<?=HOST?>">Супер Сайт</a>
								<div class="header-logo__sub"></div>
							</div>
						</div>
					</div>

					<div class="col-md-auto">
						<?php if ($uri[0] == 'registration'){ ?>
							<a class="login-page__link" href="<?=HOST?>login">Вход</a>
						<?php } else {?>
							<a class="login-page__link" href="<?=HOST?>registration">Регистрация</a>
						<?php } ?>

					</div>
				</div>
			</div>
			<div class="container login-page__block">
				<div class="row align-items-center justify-content-center">
					<div class="col-4">
						<?=$content?>
					</div>
				</div>
			</div>
			<div class="container pb-15">
				<div class="row justify-content-center">
					<div class="col-md-auto text-center login-page__copyright">
						<p>© Dream-Team</p>
						<p>Создано с &nbsp<i class="fas fa-heart"></i>&nbsp в <a href="http://webcademy.ru/" target="_blank">WebCademy.ru</a> в 2017 году</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- build:jsLibs js/libs.js -->
	<script src="<?=HOST?>templates/assets/libs/jquery/jquery.min.js"></script>
	<!-- endbuild -->
	<!-- build:jsVendor js/vendor.js -->
	<script src="<?=HOST?>templates/assets/js/register-form-check.js"></script>
	<script src="<?=HOST?>templates/assets/js/login-form-check.js"></script>
	<!-- endbuild -->
	<!-- build:jsMain js/main.js -->
	<script src="<?=HOST?>templates/assets/js/main.js"></script>
	<!-- endbuild -->
	<script defer="defer" src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>

</html>