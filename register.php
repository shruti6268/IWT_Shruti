<?php 

require_once ("connection.php");
$db_handle = new DBController();

if(!empty($_POST['email']) && !empty($_POST['password']) && !empty($_POST['Name']) && !empty($_POST['Address']) && !empty($_POST['Phone']))
{
	$query = "INSERT INTO profile(Name, Address, Email, Password, Phone) VALUES ('".$_POST['Name']."', '".$_POST['Address']."', '".$_POST['email']."', '".$_POST['password']."', '".$_POST['Phone']."');";
	$results = $db_handle->insertQuery($query);
	
	if($results)
	{
		header("Location: /index.html");
	}
	else
	{
		header("Location: /error.php?error=Internal Error Occurred");
	}
}


?>