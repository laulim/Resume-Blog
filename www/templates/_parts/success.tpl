<?php 
	foreach ($success as $item) {
		if (count($item) == 1) { ?>
			<!-- Однострочная ошибка -->
			<div class="error error--success">
				<div class="error__title"><?=$item['title']?></div>
			</div>

<?php } else if (count($item == 2)) { ?>
			<!-- Ошибка с описанием -->
			<div class="error error--success">
				<div class="error__title error__title--with-desc"><?=$item['title']?></div>
				<div class="error__desc"><?=$item['desc']?></div>
			</div>
<?php
		}
	}
?>