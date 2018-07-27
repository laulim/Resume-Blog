<?php if ($_GET['result'] == 'postDeleted'): ?>
	<div class="error" data-notify-hide>
		<div class="error__title">Пост был удален</div>
	</div>
<?php endif ?>

<?php if ($_GET['result'] == 'postCreated'): ?>
	<div class="error error--success" data-notify-hide>
		<div class="error__title">Новый пост успешно создан</div>
	</div>
<?php endif ?>

<?php if ($_GET['result'] == 'postUpdated'): ?>
	<div class="error error--success" data-notify-hide>
		<div class="error__title">Пост был успешно отредактирован</div>
	</div>
<?php endif ?>

<?php if ($_GET['result'] == 'commentDeleted'): ?>
	<div class="error" data-notify-hide>
		<div class="error__title">Комментарий был удален</div>
	</div>
<?php endif ?>

