<?php
$root = $_SERVER['DOCUMENT_ROOT'];
$host = $_SERVER['HTTP_HOST'];

define('ROOT', $root.'/openclassrooms/portfolio/app/');
define('HOST', 'http://'.$host.'/openclassrooms/portfolio/');

define('CONTROLLER', ROOT.'controller/');
define('MODEL', ROOT.'model/');
define('VIEW', ROOT.'view/');
define('PUBLICS', HOST.'public/');
