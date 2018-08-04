<?php 

$sql = 'SELECT
		works.id, works.title, works.description, works.result, works.demo, works.github, works.tecnologies, works.image, works.date_time, works.author_id,
		users.firstname, users.lastname
	FROM `works` 
	LEFT JOIN users ON works.author_id = users.id 
	WHERE works.id = '.$_GET['id'].' lIMIT 1';

$work = R::getAll($sql);
$work = $work[0];

$title = $work['title'];


// Для кнопок вперед - назад
$worksId = R::getCol('SELECT id FROM works');
foreach ($worksId as $index => $id) {
	if ($id == $work['id']) {
		@$nextId = $worksId[$index - 1];
		// @$prevId = $postsId[$index - 1];
		break;
	}
}

// Готовим контент для центральной части
ob_start();
if (isAdmin()) {
	include ROOT ."templates/_parts/_admin-panel.tpl";
}
include ROOT ."templates/portfolio/work.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/template.tpl";
include ROOT ."templates/_parts/_footer.tpl";
include ROOT ."templates/_parts/_foot.tpl";


 ?>