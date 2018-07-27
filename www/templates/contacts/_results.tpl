<?php if ($_GET['result'] == 'catCreated'): ?>
	<div class="error error--success" data-notify-hide>
		<div class="error__title">Категория успешно добавлена</div>
	</div>
<?php endif ?>

<?php if ($_GET['result'] == 'catUpdated'): ?>
	<div class="error error--success" data-notify-hide>
		<div class="error__title">Категория успешно отредактирована</div>
	</div>
<?php endif ?>

<?php if ($_GET['result'] == 'catDeleted'): ?>
	<div class="error" data-notify-hide>
		<div class="error__title">Категория успешно удалена</div>
	</div>
<?php endif ?>