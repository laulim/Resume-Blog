<?php 

$sql = 'SELECT
		posts.id, posts.text, posts.title, posts.post_img, posts.date_time, posts.author_id, posts.cat, 
		users.firstname, users.lastname,
		categories.cat_title
	FROM `posts` 
	INNER JOIN categories ON posts.cat = categories.id
	INNER JOIN users ON posts.author_id = users.id 
	WHERE posts.id = '.$_GET['id'].' lIMIT 1';

$post = R::getAll($sql);
$post = $post[0];

$title = $post['title'];


// Готовим контент для центральной части
ob_start();
include ROOT ."templates/_parts/_header.tpl";
include ROOT ."templates/blog/blog-post.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/template.tpl";
include ROOT ."templates/_parts/_footer.tpl";
include ROOT ."templates/_parts/_foot.tpl";


 ?>