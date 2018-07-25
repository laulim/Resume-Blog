<div class="container category-delete-page">
	<div class="row mt-40 justify-content-center">
		<div class="col-md-10 mb-120">
			<div class="title-1 mb-20">Удалить комментарий</div>

			<pre>
				<?php print_r($commentUserData); ?>
			</pre>

			<p>Вы действительно хотите комментарий пользователя 
				<strong>
					<a 	<?php if ($commentUserData['user_id'] == $_SESSION['logged_user']['id']) { ?>
							href="<?=HOST?>profile" 
						<?php } else { ?>
							href="<?=HOST?>user-profile?id=<?=$commentUserData['user_id']?>" 
						<?php } ?> >
					<?php if ($commentUserData['firstname'] != '' || $commentUserData['lastname'] != ''){
						echo $commentUserData['firstname']?> . ' ' . <?=$commentUserData['lastname'];
					} else {
						echo $commentUserData['email'];
					} ?>
				</a>
			</strong> 
				с id комментария = <?=$commentUserData['id']?>?
			</p>
			
			<form action="<?=HOST?>blog/post/comment-delete?comment_id=<?=$_GET['comment_id']?>&post_id=<?=$_GET['post_id']?>" method="POST"  >
				<input type="submit" name="commentDelete" class="button button--delete button--delete--big mt-20" value="Удалить">
				<a class="button ml-20" href="<?=HOST?>blog/post?id=<?=$_GET['post_id']?>">Отмена</a>
			</form>

			
		</div>
	</div>
</div>