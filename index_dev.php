<?php
ini_set('max_execution_time', 0);
set_time_limit(0);
if(file_exists(__DIR__ . "/public" . $_SERVER['REQUEST_URI'].'.html')) { die(readfile(__DIR__ . "/public" . $_SERVER['REQUEST_URI'].'.html')); }
$fn = __DIR__ . "/public" . $_SERVER['SCRIPT_NAME'];
if(file_exists($fn) && is_file($fn)) return false;
require "./public/index.php";