<?php 
$title = "Профиль пользователя";

$user = R::findOne('users', 'id = ?', array($_GET['id']));

$sql = 'SELECT
	comments.id, comments.post_id, comments.text, comments.date_time, 
	posts.title
	FROM `comments`
	LEFT JOIN users ON comments.user_id = users.id
	LEFT JOIN posts ON comments.post_id = posts.id 
	WHERE users.id = '. $_GET['id'] .'  ORDER BY comments.id ASC';

$comments = R::getAll($sql);



// Готовим контент для центральной части
ob_start();
include ROOT ."templates/_parts/_header.tpl";
include ROOT ."templates/profile/user-profile.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/template.tpl";
include ROOT ."templates/_parts/_footer.tpl";
include ROOT ."templates/_parts/_foot.tpl";


 ?>