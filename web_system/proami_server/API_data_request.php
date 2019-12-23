<?php
include "dataBase.php";

/*
//date_default_timezone_set ("America/Brasilia");
//date.timezone = America/Brasilia;
$date = date("Y-m-d h:i:s");
//$date = "YYYY-MM-DD HH:MI:SS";
$json = '[
{"uid": "000666", "momento": "hoje", "ta": "220V"},
{"uid": "000666", "momento": "hoje", "ta": "220V"},
{"uid": "000666", "momento": "hoje", "ta": "220V"},
{"uid": "000666", "momento": "hoje", "ta": "220V"},
{"uid": "000666", "momento": "hoje", "ta": "220V"},
{"uid": "000666", "momento": "hoje", "ta": "220V"}
]';
echo $json;
*/
if (isset($_GET["uid"]))
  $uid = $_GET["uid"];
else
  $uid = 000001;
$connection = openConnection();
print json_encode(readTest($connection, $uid, 10));
closeConnection($connection);

?>
