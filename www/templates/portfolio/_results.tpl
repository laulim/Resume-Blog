<?php if ($_GET['result'] == 'workDeleted'): ?>
	<div class="error" data-notify-hide>
		<div class="error__title">Работа была удалена</div>
	</div>
<?php endif ?>

<?php if ($_GET['result'] == 'workCreated'): ?>
	<div class="error error--success" data-notify-hide>
		<div class="error__title">Новая работа успешно добавлена</div>
	</div>
<?php endif ?>

<?php if ($_GET['result'] == 'workUpdated'): ?>
	<div class="error error--success" data-notify-hide>
		<div class="error__title">Работа была успешно отредактирована</div>
	</div>
<?php endif ?>


