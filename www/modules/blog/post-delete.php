<?php 

if (!isAdmin()) {
	header('Location: ' . HOST);
	die();
}

$title = "Удалить пост";

$post = R::load('posts', $_GET['id']);
$comments = R::find('comments', 'post_id = ?', array($post['id']));

if (isset($_POST['postDelete'])) {
	if ($post->post_img != '') { 
		$picUrl = ROOT . 'usercontent/blog/' . $post->post_img; 
		unlink($picUrl);
		$picUrl320 = ROOT . 'usercontent/blog/' . $post->post_img_small;
		unlink($picUrl320);
	}

	R::trash($post);
	R::trashAll($comments);
	header('Location: ' . HOST . 'blog?result=postDeleted');
	exit();
}


// Готовим контент для центральной части
ob_start();
include ROOT ."templates/_parts/_header.tpl";
include ROOT ."templates/blog/post-delete.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/template.tpl";
include ROOT ."templates/_parts/_footer.tpl";
include ROOT ."templates/_parts/_foot.tpl";


 ?>