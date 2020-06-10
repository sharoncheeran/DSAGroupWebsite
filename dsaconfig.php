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
|  Description: This configuration file contains the 
| 				API Keys for the weather and the Database
| 				information i.e the username, password etc.
|
| 				The configuration file will be included 
| 				in the login.php and the weather.php file 
| 				as it contains sensitive information
|				  
*===========================================================================*/
# API Key for the Weather.php file 
$weatherAPIKey = '7c7b929327cdd7f98edddc2a7b32219f';

# API Key for Wiki in getPointOfInterest.php
$wikiAPiKey = "api.php?action=query&format=json&prop=extracts&exintro=1&explaintext=1&titles="; 

# Database login details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "twin_cities";
?>