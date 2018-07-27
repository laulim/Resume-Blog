<div class="user-message mt-10 mb-10">
	<div class="user-message__header">
		<div class="user-message__date"><?=$job->period?></div>
		<div>
			<a class="button button--edit button--small" href="<?=HOST?>about/job-item-edit?id=<?=$job->id?>">Редактировать</a>
			<a class="button button--delete button--small" href="<?=HOST?>about/job-item-delete?id=<?=$job->id?>">Удалить</a>
		</div>
	</div>
	<div class="user-message__from">
		<div class="user-message__name"><?=$job->title?></div>
	</div>

	<div class="user-message__text">
		<p class="user-content"><?=$job->description?></p>
	</div>
</div>