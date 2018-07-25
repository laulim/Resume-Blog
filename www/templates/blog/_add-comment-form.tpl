<div class="title-2">Оставить комментарий</div>

<?php if (isLoggedIn()) {?>
<form 
	class="comment-add" id="validate-form" method="POST" 
	action="<?=HOST?>blog/post?id=<?=$post['id']?>" />
	<div class="comment-add__avatar">
		<div class="avatar avatar--small">
			<?php if ($_SESSION['logged_user']['avatar_small'] != '') { ?>
				<img 
					src="<?=HOST?>/usercontent/avatar/<?=$_SESSION['logged_user']['avatar_small']?>" 
					title="<?=$_SESSION['logged_user']['firstname']?> <?=$_SESSION['logged_user']['lastname']?>" />
			<?php } ?>
		</div>
	</div>
	<div class="comment-add__form">
		<div class="title-6 mt-0 mb-2">
			<?php if ($_SESSION['logged_user']['firstname'] != '' || $_SESSION['logged_user']['lastname'] != '') {
				echo $_SESSION['logged_user']['firstname'] . " " . $_SESSION['logged_user']['lastname'];
			} else {
				echo $_SESSION['logged_user']['email'];
			}?>
		</div>
		<?php require ROOT. "templates/_parts/errors.tpl" ?>
		<textarea 
			class="textarea" name="commentText" 
			data-required="required" 
			data-text-error="комментарий" 
			placeholder="Присоединиться к обсуждению..." /></textarea>
		<input class="button" type="submit" value="Опубликовать" name="addComment" />
	</div>
</form>
<?php } else { ?>
<div class="comment">
	<div class="comment--register">
		<p><a class="comment-register_link" href="<?=HOST?>login">Войдите</a> или <a class="comment-register_link" href="<?=HOST?>registration">зарегистрируйтесь</a><br/> чтобы оставить комментарий</p>
	</div>
</div>
<?php } ?>