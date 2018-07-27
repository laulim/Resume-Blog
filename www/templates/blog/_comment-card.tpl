<div class="comment-wrap">
	<div class="avatar avatar--small">
		<?php if ($comment['avatar_small'] != '') { ?>
			<img 
				src="<?=HOST?>/usercontent/avatar/<?=$comment['avatar_small']?>" 
				title="<?=$comment['firstname']?> <?=$comment['lastname']?>" />
		<?php } ?>
	</div>
	<?php if (isAdmin()): ?>
	<a class="button button--delete button--small" href="<?HOST?>post/comment-delete?comment_id=<?=$comment['id']?>&post_id=<?=$post['id']?>">Удалить</a>
	<?php endif ?>
	<div class="comment__content">
		<div class="comment__header">
			<a 
				<?php if ($comment['user_id'] == $_SESSION['logged_user']['id']) { ?>
					href="<?=HOST?>profile" 
				<?php } else { ?>
					href="<?=HOST?>user-profile?id=<?=$comment['user_id']?>" 
				<?php } ?>
				class="comment__user-name">
				<?php if ($comment['firstname'] != '' || $comment['lastname'] != '') {
					echo $comment['firstname'] . " " . $comment['lastname'];
				} else {
					echo $comment['email'];
				}?>
			</a>
			<div class="comment__date"><i class="far fa-clock"></i>
				 <?=rus_date("j F Y H:i", strtotime($comment['date_time']))?>
			</div>
		</div>
		<p class="comment__text">
			<?=$comment['text']?>
		</p>
	</div>

</div>