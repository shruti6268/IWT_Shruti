<?php 

require_once ("connection.php");
$db_handle = new DBController();

if(!empty($_POST['Name']) && !empty($_POST['email']) && !empty($_POST['Tital']) && !empty($_POST['Source_Name']) && !empty($_POST['Source_Address']) && !empty($_POST['Source_Phone']) && !empty($_POST['Destination_Name']) && !empty($_POST['Destination_Address']) && !empty($_POST['Destination_Phone']))
{
	$query = "INSERT INTO shipping(Name, Email, Tital, Source_Name, Source_Address, Source_Phone,Destination_Name, Destination_Address,Destination_Phone) VALUES ('".$_POST['Name']."', '".$_POST['email']."', '".$_POST['Tital']."', '".$_POST['Source_Name']."', '".$_POST['Source_Address']."', '".$_POST['Source_Phone']."',  '".$_POST['Destination_Name']."',  '".$_POST['Destination_Address']."',  '".$_POST['Destination_Phone']."');";
	$results = $db_handle->insertQuery($query);
	
	if($results)
	{
		header("Location: /error.php?error=Order Successful");
	}
	else
	{
		header("Location: /error.php?error=Internal Error Occurred");
	}
}

?>