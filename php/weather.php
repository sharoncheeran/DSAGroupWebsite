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
function pickImage($description){
	if ($description == "Rain")
	{
		echo("<img src='pictures/rain.png' style='padding:2.5px;width:50px;height:50px;'>");
	}
	elseif($description == "Snow")
	{
		echo("<img src='pictures/winter.png' style='padding:2.5px;width:50px;height:50px;'>");
	}
	elseif($description == "Clouds")
	{
		echo("<img src='pictures/cloud.png' style='padding:2.5px;width:50px;height:50px;'>");
	}
	else
	{
		echo("<img src='pictures/sun.png' style='padding:2.5px;width:5s0px;height:50px;'>");
	}	
}

function weatherAPI($woeid){
	include('login.php');

	$sql = "SELECT Name, Country FROM CITY WHERE Woeid = $woeid;";

	$id = $conn->query($sql);
	$row = $id->fetch_assoc(); 
	
	$forcastWeather = file_get_contents('http://api.openweathermap.org/data/2.5/forecast?q='. $row['Name'] . ',' . $row['Country'] .'&units=metric&APPID='. $weatherAPIKey);
	$getForecast = json_decode($forcastWeather, true);

	echo("<div align='center' class='tab'>");
	
	$currentDate = date('d/m/y');
	$yesterdaysDate = date('d/m/y') . '+1 day';
	for ($i=0; $i < $getForecast["cnt"]; $i++)
	{	
		$date = $getForecast["list"][$i]["dt_txt"];
		$dateFormatted = date('d/m/y', strtotime($date));

		$dateString = substr($date, 0, -9);

		if($yesterdaysDate != $dateFormatted){
			if($currentDate != $dateFormatted)
			{
				if ($i != 36)
				{
					$i += 4;
				}
			}

			echo "<button href='#weatherHours' class='tablinks' onclick='openWeather(event,\"". $dateString. "\")'>";

			echo '<b>' . date('D jS ', strtotime($date)) . '</b></br>';
			
			pickImage($getForecast["list"][$i]["weather"][0]["main"]);

			echo ("<p>Temp: " . $getForecast["list"][$i]["main"]["temp"] . " &#8451;</p>");

			echo("</button>");
			$yesterdaysDate = $dateFormatted;
		}
	}

	echo("</div><hr class='hideHR'><div id='weatherHours' align='center'>");

	for ($i=0; $i < $getForecast["cnt"]; $i++)
	{
		$date = $getForecast["list"][$i]["dt_txt"];
		$dateFormatted = substr($date, 0, -9);
		$timeFormatted = substr($date, -8, 5);

		echo("<div class= \"" . $dateFormatted. " tabcontent\" style=\"display: none;\" align='center'>");

		$description = $getForecast["list"][$i]["weather"][0]["main"];
		
		echo '<b>' . $timeFormatted . '</b></br>';

		pickImage($description);

		echo ("<p style='padding:10px;'>Temp: " . $getForecast["list"][$i]["main"]["temp"] . " &#8451;</br>
										Humidity: " . $getForecast["list"][$i]["main"]["humidity"] . "%</p></div>");
		
	}
	echo("</div>");
}	
?>