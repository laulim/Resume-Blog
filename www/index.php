<?php 


/* путь до корневой директории скрипта по протоколу http */
define('HOST', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/');

/* физический путь до корневой директории скрипта */
define('ROOT', dirname(__FILE__). '/');


$errors = array();
$success = array();

require ROOT. "config.php";
require ROOT. "db.php";
require ROOT. "libs/functions.php";

session_start();

/* ..........................
Роутер
.............................*/

$uri = $_SERVER['REQUEST_URI'];
$uri = rtrim($uri, "/");
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);

switch ($uri[0]) {
	case '':
		include ROOT . "modules/main/index.php";
		break;

	//::::::::::::::::: USERS :::::::::::::::::::::
	case 'login':
		include ROOT . "modules/login/login.php";
		break;

	case 'registration':
		include ROOT . "modules/login/registration.php";
		break;
	case 'logout':
		include ROOT . "modules/login/logout.php";
		break;
	case 'lost-password':
		include ROOT . "modules/login/lost-password.php";
		break;
	case 'set-new-password':
		include ROOT . "modules/login/set-new-password.php";
		break;
	case 'profile':
		include ROOT . "modules/profile/index.php";
		break;
	case 'profile-edit':
		include ROOT . "modules/profile/edit.php";
		break;

	case 'user-profile':
		include ROOT . "modules/profile/user-profile.php";
		break;

	//::::::::::::::::: CATEGORIES :::::::::::::::::::::

	case 'blog/categories':
		include ROOT . "modules/categories/all.php";
		break;

	case 'blog/category-new':
		include ROOT . "modules/categories/new.php";
		break;

	case 'blog/category-edit':
		include ROOT . "modules/categories/edit.php";
		break;

	case 'blog/category-delete':
		include ROOT . "modules/categories/delete.php";
		break;

	//::::::::::::::::: BLOG :::::::::::::::::::::

	case 'blog':
		include ROOT . "modules/blog/index.php";
		break;

	case 'blog/post-new':
		include ROOT . "modules/blog/post-new.php";
		break;

	case 'blog/post-edit':
		include ROOT . "modules/blog/post-edit.php";
		break;

	case 'blog/post-delete':
		include ROOT . "modules/blog/post-delete.php";
		break;

	case 'blog/post':
		include ROOT . "modules/blog/post.php";
		break;

	case 'blog/post/comment-delete':
		include ROOT . "modules/blog/comment-delete.php";
		break;
	
	//::::::::::::::::: CONTCTS :::::::::::::::::::::

	case 'contacts':
		include ROOT . "modules/contacts/index.php";
		break;

	case 'contacts-edit':
		include ROOT . "modules/contacts/edit.php";
		break;

	case 'messages':
		include ROOT . "modules/contacts/messages.php";
		break;

	case 'message-delete':
		include ROOT . "modules/contacts/message-delete.php";
		break;

	//::::::::::::::::: ABOUT ME :::::::::::::::::::::

	case 'about':
		include ROOT . "modules/about/index.php";
		break;

	case 'about/edit-text':
		include ROOT . "modules/about/edit-text.php";
		break;

	case 'about/edit-skills':
		include ROOT . "modules/about/edit-skills.php";
		break;

	case 'about/edit-jobs':
		include ROOT . "modules/about/edit-jobs.php";
		break;

	case 'about/job-item-edit':
		include ROOT . "modules/about/job-item-edit.php";
		break;

	case 'about/job-item-delete':
		include ROOT . "modules/about/job-item-delete.php";
		break;

	//::::::::::::::::: PORTFOLIO :::::::::::::::::::::

	case 'portfolio':
		include ROOT . "modules/portfolio/index.php";
		break;

	case 'portfolio/work':
		include ROOT . "modules/portfolio/work.php";
		break;

	case 'portfolio/work-new':
		include ROOT . "modules/portfolio/work-new.php";
		break;

	case 'portfolio/work-edit':
		include ROOT . "modules/portfolio/work-edit.php";
		break;

	case 'portfolio/work-delete':
		include ROOT . "modules/portfolio/work-delete.php";
		break;

	//::::::::::::::::: MAIN / OTHER :::::::::::::::::::::

	default:
		include ROOT . "modules/main/index.php";
		break;
}

?>