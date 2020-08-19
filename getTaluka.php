<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method, Authorization");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");

define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'state');

function connect()
{
  $connect = mysqli_connect(DB_HOST ,DB_USER ,DB_PASS ,DB_NAME);

  if (mysqli_connect_errno($connect)) {
    die("Failed to connect:" . mysqli_connect_error());
  }

  mysqli_set_charset($connect, "utf8");

  return $connect;
}

$con = connect();

$postdata = file_get_contents("php://input");
if(isset($postdata) && !empty($postdata))
{  
  $request = json_decode($postdata);
  // Sanitize.
  $id = mysqli_real_escape_string($con, trim($request->id));    
}

$download = [];
$sql = "SELECT * FROM taluka WHERE dist_id = '$id' ORDER BY taluka ASC";

if($result = mysqli_query($con,$sql))
{
  $i = 0;
  while($row = mysqli_fetch_assoc($result))
  {
      $dist_id = $row['dist_id']; 
      $subQuery = "SELECT * FROM district WHERE id = '$dist_id'";
      $subrun = mysqli_query($con,$subQuery);
      $rowSub = mysqli_fetch_assoc($subrun);
      
      
            
    
      $download[$i]['id'] = $row['id']; 
      $download[$i]['taluka'] = $row['taluka'];
      $download[$i]['ditrictName'] = $rowSub['name']; 
      $i++;
  }

  echo json_encode($download);
}
else
{
  http_response_code(404);
}