<?php 
	foreach ($errors as $error) {
		if (count($error) == 1) { ?>
			<!-- Однострочная ошибка -->
			<div class="error">
				<div class="error__title"><?=$error['title']?></div>
			</div>

<?php } else if (count($error == 2)) { ?>
			<!-- Ошибка с описанием -->
			<div class="error">
				<div class="error__title error__title--with-desc"><?=$error['title']?></div>
				<div class="error__desc"><?=$error['desc']?></div>
			</div>
<?php
			}
		}
	?>