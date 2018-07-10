<?php 

/* параметры подключения к БД */
define('DB_HOST', 'localhost');
define('DB_NAME', 'WD03-project-kovtun');
define('DB_USER', 'root');
define('DB_PASS', '');

/* путь до корневой директории скрипта по протоколу http */
define('HOST', $_SERVER['REQUEST_SCHEME'] . '://' . $_SERVER['HTTP_HOST'] . '/');

/* физический путь до корневой директории скрипта */
define('ROOT', dirname(__FILE__). '/');

?>