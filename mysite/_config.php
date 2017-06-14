<?php
global $project;
$project = 'mysite';
// Define DB Name
if(defined('SS_DATABASE_NAME') && SS_DATABASE_NAME) {
    $database = SS_DATABASE_NAME;
}
else {
    $database = 'lukedawon_silvershop_live_db';
}
// Define DB UserName
if(defined('SS_DATABASE_USERNAME') && SS_DATABASE_USERNAME) {
    $DBUserName = SS_DATABASE_USERNAME;
}
else {
    $DBUserName = 'admin';
}
// Define DB UserName
if(defined('SS_DATABASE_PASSWORD') && SS_DATABASE_PASSWORD) {
    $DBPassword = SS_DATABASE_PASSWORD;
}
else {
    $DBPassword = 'admin';
}

// Set Database credentials
global $databaseConfig;
$databaseConfig = array(
    'type' => 'MySQLDatabase',
    'server' => '127.0.0.1',
    'username' => $DBUserName,
    'password' => $DBPassword,
    'database' => $database,
    'path' => ''
);
/* OLD config, may have to play with location of require_once('conf/ConfigureFromEnv.php');
global $database;
$database = '';
require_once('conf/ConfigureFromEnv.php');
*/
require_once('conf/ConfigureFromEnv.php');
// Set the site locale
i18n::set_locale('en_US');

