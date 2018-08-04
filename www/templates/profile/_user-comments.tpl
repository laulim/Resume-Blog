<div class="comment-wrap comment-wrap--no-avatar">
	<div class="comment__content">
		<div class="comment__header">
			<a class="comment__related-to" 
				href="<?HOST?>blog/post?id=<?=$comment['post_id']?>">
				<?=mbCutString($comment['title'], 42)?>
			</a>
			<div class="comment__date">
				<i class="far fa-clock"></i> 
				<?=rus_date("j F Y H:i", strtotime($comment['date_time']))?>
			</div>
		</div>
		<div class="comment__text">
			<?=$comment['text']?>
		</div>
	</div>
</div>