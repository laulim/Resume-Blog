<?php 

if (!isAdmin()) {
	header('Location: ' . HOST);
	die();
}

$title = "Удалить комментарий";

$sqlComment = 'SELECT 
			comments.id, comments.user_id, comments.post_id,
			users.firstname, users.lastname, users.email
		FROM `comments`
		INNER JOIN users ON comments.user_id = users.id
		WHERE comments.id = ' . $_GET['comment_id'] .' LIMIT 1';

$commentUserData = R::getAll($sqlComment);
$commentUserData = $commentUserData[0];

$comment = R::load('comments', $commentUserData['id']);

if (isset($_POST['commentDelete'])) {
	R::trash($comment);
	header('Location: ' . HOST . 'blog/post?id='.$_GET['post_id'].'&result=commentDeleted');
	exit();
}


// Готовим контент для центральной части
ob_start();
include ROOT ."templates/_parts/_header.tpl";
include ROOT ."templates/blog/comment-delete.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/template.tpl";
include ROOT ."templates/_parts/_footer.tpl";
include ROOT ."templates/_parts/_foot.tpl";


 ?>