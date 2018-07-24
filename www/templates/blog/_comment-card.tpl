<div class="comment-wrap">
	<div class="avatar avatar--small">
		<?php if ($comment['avatar_small'] != '') { ?>
			<img 
				src="<?=HOST?>/usercontent/avatar/<?=$comment['avatar_small']?>" 
				title="<?=$comment['firstname']?> <?=$comment['lastname']?>" />
		<?php } ?>
	</div>
	<div class="comment__content">
		<div class="comment__header">
			<div class="comment__user-name">
				<?php if ($comment['firstname'] != '' || $comment['lastname'] != '') {
					echo $comment['firstname'] . " " . $comment['lastname'];
				} else {
					echo $comment['email'];
				}?>
			</div>
			<div class="comment__date"><i class="far fa-clock"></i>
				 <?=rus_date("j F Y H:i", strtotime($comment['date_time']))?>
			</div>
		</div>
		<p class="comment__text">
			<?=$comment['text']?>
		</p>
	</div>
</div>