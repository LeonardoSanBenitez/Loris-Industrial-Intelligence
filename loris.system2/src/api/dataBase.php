<?php
/*------------------------------------------------------------------*/
//Return the conection stream
function openConnection($database_name = 'proami', $exit = true)
{
    $connection = pg_connect("host=labsmart.florianopolis.ifsc.edu.br port=5432 dbname=$database_name user=smartifsc_website password=51KTrPq3205 connect_timeout=1");
    if ($connection) {
        return $connection;
    } else {
        if ($exit) {
            echo json_encode(null);
            // finaliza o script que chamou essa função, sem ler as próximas linhas do script.
            exit();
        } else {
            return $connection;
        }
    }
}

/*------------------------------------------------------------------*/
//Close the connection stream
function closeConnection($connection)
{
    pg_close($connection);
}

/*------------------------------------------------------------------*/
//Read uid, momento and ta from elo_dados
//return JSON
function simple_select($_connection, $_uid, $_limit){
  $result = pg_query("
    SELECT id, uid, freq, ta, pa, momento
    FROM elo_dados
    WHERE uid = '$_uid'
    ORDER BY id DESC
    LIMIT '$_limit';
  ");
  $data = array();
  while ($row = pg_fetch_assoc($result)){
    $data[] = $row;
  }
  return $data;
}
?>
