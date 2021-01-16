<?php 

require_once ("connection.php");
$db_handle = new DBController();

$query = "SELECT * FROM shipping;";
$shipping_list = $db_handle->runQuery($query);
$count = $db_handle->numRows($query);

$counter = 1;

echo '<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Admin - Shipment</title>
		<link rel="stylesheet" href="style.css" />
	</head>
	<body>
		<div class="form" style="margin: auto; margin-top: 200px;">
			<h2 align="center" style="padding: 20px;">Order List</h2>'; 
			if ($count > 0)
			{
				foreach ($shipping_list as $info) 
				{
					echo '<p>';
					echo $counter.'. Source Name: '.$info["Source_Name"].', Source Address: '.$info["Source_Address"].', Source phone: '.$info["Source_phone"].',Destination Name: '.$info["Destination_Name"].',Destination Address: '.$info["Destination_Address"].',Destination Phone: '.$info["Destination_Phone"];
					echo '</p>';
					
					$counter = $counter + 1;
				}
			}
		echo '
		</div>
		<script src="js.js"></script>
	</body>
</html>';
?>
