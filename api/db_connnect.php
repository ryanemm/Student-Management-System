<?php

$db_name = "school_management_system";
$db_server = "localhost";
$db_user = "anakin";
$db_pass = "99R1eelr#anakin";

$db = new PDO("mysql:host={$db_server};dbname={$db_name};charset=utf8", $db_use>
$db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

echo "connected_again";





