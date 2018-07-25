<div class="user-message mb-20">
	<div class="user-message__header">
		<div class="user-message__date">
			<?=rus_date("j F Y H:i", strtotime($message['date_time']))?>
		</div>

		<a class="button button--delete button--small" href="<?HOST?>message-delete?id=<?=$message['id']?>">Удалить</a>
	</div>

	<div class="user-message__from">
		<div class="user-message__name"><?=$message['name']?></div>
		<a class="user-message__email" href="mailto:<?=$message['email']?>"><?=$message['email']?></a>
	</div>

	<div class="user-message__text">
		<p class="user-content"><?=$message['message']?></p>
	</div>

	<?php if ($message['message_file'] != ''): ?>
	<div class="user-message__attachments">
		<div class="user-message__attachments-name">Прикрепленный файл:</div>
		<a class="button--link" 
			href="<?HOST?>usercontent/upload_files/<?=$message['message_file']?>" 
			download="<?=$message['message_file_name_original']?>">
			<?=$message['message_file_name_original']?>
		</a>
	</div>
	<?php endif ?>
	
</div>