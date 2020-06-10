<?php
/*=============================================================================
|      Editors:  Martyn Fitzgerald - 16025948
|                Sharon Cheeran    - 17012330
|                Sharmin J Rony    - 16025948
|                Josh Boyce    	   - 16025948
|
|  Module Code:  UFCFV4-30-2
| Module Title:  Data, Schemas & Applications
|                
|   Instructor:  Prakash Chatterjee / Glyn Watkins
|     Due Date:  14/03/2019
|
|  Description: ################################################
|				  
*===========================================================================*/
if (is_file('../../dsaconfig.php'))
{
    require_once('../../dsaconfig.php');
}
else
{
    require_once('../dsaconfig.php');
}

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection#
if ($conn->connect_error) {
	echo "<br><h1>Error : Can't Connect To Database</h1><br>";
	die("Connection failed: " . $conn->connect_error);
} 
else
{
	$conn->query("SET NAMES 'utf8'");
}
?>