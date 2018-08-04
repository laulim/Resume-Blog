<?php 

if (!isAdmin()) {
	header('Location: ' . HOST);
	die();
}

$title = "Редактировать - Обо мне";

$skills = R::load('skills', 1);

if (isset($_POST['skillsUpdate'])) {

	foreach ($_POST as $index => $value) {
		if (intval($value) > 100 || intval($_POST['html']) < 0) {
			$errors[] = ['title' => "Введите число от 0 до 100 в поле $index"];
		}
	}

	if (empty($errors)) {
		// $skills = R::dispense('skills');
		
		$skills->html = htmlentities($_POST['html']);
		$skills->css = htmlentities($_POST['css']);
		$skills->js = htmlentities($_POST['js']);
		$skills->jquery = htmlentities($_POST['jquery']);

		$skills->php = htmlentities($_POST['php']);
		$skills->mysql = htmlentities($_POST['mysql']);

		$skills->git = htmlentities($_POST['git']);
		$skills->gulp = htmlentities($_POST['gulp']);
		$skills->yarn = htmlentities($_POST['yarn']);
		$skills->npm = htmlentities($_POST['npm']);

		R::store($skills);
		header('Location: ' . HOST . 'about');
		exit();
	}

}



// Готовим контент для центральной части
ob_start();
include ROOT ."templates/_parts/_header.tpl";
include ROOT ."templates/about/edit-skills.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/template.tpl";
include ROOT ."templates/_parts/_footer.tpl";
include ROOT ."templates/_parts/_foot.tpl";

?>
