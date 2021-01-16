<?php 

require_once ("connection.php");
$db_handle = new DBController();

if(!empty($_GET['error']))
{
	echo '<h2>'.$_GET['error'].'</h2>';
}

?>