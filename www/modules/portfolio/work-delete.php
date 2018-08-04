<?php 

if (!isAdmin()) {
	header('Location: ' . HOST);
	die();
}

$work = R::load('works', $_GET['id']);

$title = "Удалить работу - $work->title";

if (isset($_POST['workDelete'])) {
	if ($work->image != '') { 
		$picUrl = ROOT . 'usercontent/works/' . $work->image; 
		unlink($picUrl);
		$picUrl360 = ROOT . 'usercontent/works/' . $work->image_small;
		unlink($picUrl360);
	}

	R::trash($work);
	header('Location: ' . HOST . 'portfolio?result=workDeleted');
	exit();
	
}


// Готовим контент для центральной части
ob_start();
include ROOT ."templates/_parts/_header.tpl";
include ROOT ."templates/portfolio/work-delete.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/template.tpl";
include ROOT ."templates/_parts/_footer.tpl";
include ROOT ."templates/_parts/_foot.tpl";


 ?>