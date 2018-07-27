<?php if (@$_GET['result'] == 'newJobAdded'): ?>
	<div class="error error--success" data-notify-hide>
		<div class="error__title">Новое место работы успешно добавлено</div>
	</div>
<?php endif ?>

<?php if (@$_GET['result'] == 'jobUpdated'): ?>
	<div class="error error--success" data-notify-hide>
		<div class="error__title">Место работы успешно отредактировано</div>
	</div>
<?php endif ?>

<?php if (@$_GET['result'] == 'jobDeleted'): ?>
	<div class="error" data-notify-hide>
		<div class="error__title">Место работы было удалено</div>
	</div>
<?php endif ?>

