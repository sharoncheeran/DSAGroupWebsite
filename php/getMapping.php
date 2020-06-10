<?php
/*=============================================================================
|      Editors:  Martyn Fitzgerald - 16025948
|
|  Module Code:  UFCFV4-30-2
| Module Title:  Data, Schemas & Applications
|                
|   Instructor:  Prakash Chatterjee / Glyn Watkins
|     Due Date:  14/03/2019
|
|  Description:  Creating a JSON object with the data inside our MYSQL Database
|
*===========================================================================*/
/* 
	Creating the connection to the database
*/
include('dbConnection.php');
$city = [];
/* 
	Creating a string ($sql) with the SQL statement and holding the result of the query inside $sqlResult
*/
$sql = "SELECT * from city";
$sqlResult = $conn->query($sql);
/* 
	This checks if there is any rows and if so then loop through them. Each time 
	you loop you set the current row to varible $row
*/
if ($sqlResult->num_rows > 0) 
{
	while ( $row = $sqlResult->fetch_assoc()) 
	{
		$poi = [];
		$woiImages = [];
		$woeid = $row["Woeid"];
		/* 
			Creating a string ($sqlPoi) with the SQL statement and holding the result of the query inside $sqlResultPoi
		*/
		$sqlPoi = "SELECT poi.*, category.Map_Icon_Fle FROM poi INNER JOIN category ON poi.Cat_ID = category.Cat_ID WHERE Woeid = $woeid";
		$sqlResultPoi = $conn->query($sqlPoi);
		/* 
			This checks if there is any rows and if so then loop through them. Each time 
			you loop you set the current row to varible $rowPOI
		*/
		if ($sqlResultPoi->num_rows > 0) 
		{
			while ($rowPOI = $sqlResultPoi->fetch_assoc()) 
			{
				/* 
					Adding all the data from the current row ($rowPOI) into the $tempPOI array
					and then pushing that array onto the main array $poi
				*/
				$tempPOI = array(
                    'poi_id' => $rowPOI["POI_ID"],
					'name' => $rowPOI["Name"],
					'lat' => $rowPOI["Lat"],
					'lng' => $rowPOI["Lng"],
					'desc' => $rowPOI["Description"],
					'hashTags' => $rowPOI["HashTags"],
					'wikiURL' => $rowPOI["Wiki_URL"],
					'mapIconFle' => $rowPOI["Map_Icon_Fle"]
				);
				array_push($poi, $tempPOI);
			}
		}
		/* 
			Creating a string ($sqlWoiIimages) with the SQL statement and holding the result of the query inside $sqlResultWoiImages
		*/
		$sqlWoiIimages = "SELECT * FROM images WHERE Woeid = $woeid";
		$sqlResultWoiImages = $conn->query($sqlWoiIimages);
		/* 
			This checks if there is any rows and if so then loop through them. Each time 
			you loop you set the current row to varible $rowWoiImage
		*/
		if ($sqlResultWoiImages->num_rows > 0) 
		{
			while ($rowWoiImage = $sqlResultWoiImages->fetch_assoc()) 
			{
				/* 
					Adding all the data from the current row ($rowWoiImage) into the $tempWoiImages array
					and then pushing that array onto the main array $woiImages
				*/
				$tempWoiImages = array(
					'poiID' => $rowWoiImage["POI_ID"],
					'name' => $rowWoiImage["Title"],
					'desc' => $rowWoiImage["Description"],
					'imageFle' => $rowWoiImage["Fle"]
				);
				array_push($woiImages, $tempWoiImages);
			}
		}
		/* 
			Adding all the data from the current row ($row) into the $tempCity array
			and then pushing that array onto the main array $city
		*/
		$tempCity = array( 
			'woeid' =>$row["Woeid"],
			'name' => $row["Name"],
			'desc' => $row["Description"],
			'lat' => $row["Lat"],
			'lng' => $row["Lng"],
			'curPop' => $row["CurrentPopulation"],
			'hashTags' => $row["HashTags"],
			'country' => $row["Country"],
			'images' => $woiImages,
			'poi' => $poi
		);
		array_push($city, $tempCity);
	}
}
/* 
	Closing the connection to the database
*/
$conn->close();
/* 
	Printing out the City array as a JSON Object
*/
header('Content-Type: application/json; charset=utf-8');
echo  json_encode($city);
//echo  json_encode($city, JSON_PRETTY_PRINT);
?>