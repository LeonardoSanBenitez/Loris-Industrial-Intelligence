<?php
include 'datBase.php';
date_default_timezone_set('America/Sao_Paulo');

/* Read post content*/
$received = file_get_contents('php://input');
$received = json_decode ($received);
$received-> ReceivedTime = date ("Y-m-d h:i:s");

/* Insert in dataBase*/
$connection = openConnection ();
echo (insert_data ($connection, $received));
closeConnection ($connection);
?>
