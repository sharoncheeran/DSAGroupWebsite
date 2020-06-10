<!--=============================================================================
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
|  Description:  ###############################################
|				  
|
*===========================================================================-->
<?php 
require_once('include/header.html');
require_once('php/getWeather.php');
?>
<!-- Javascript mapping functions -->
<script src="javaScript/mapping.js"></script>

<script>
	initialize("55863414");
</script>

<div class="container">
	<div class="row mappingRow">
		<div class="col-lg-7 col-md-12">
			<h1 id="cityTitle"></h1>
			<div id="mapCanvas"><br><br></div>
		</div>
		<div id="descOverall" class="col-lg-5 col-md-12">
			<div>
				<div class="row">
					<div class="col-xl-11 col-lg-10 col-9">
						<h1 class="descTitle" >Description</h1>
					</div>
					<div class="col-xl-1 col-lg-2 col-3">
						<a id="rssLink" href="#">
						<img class="rssImg" alt="" src="pictures/rss.png"/>
						</a>
					</div>
				</div>
			</div>
			<p id="cityDescription"></p>
			<div class="row">
				<div class="col-xl-6 col-lg-12">
					<h4 id="cityPopulation"></h4>
					<h4 id="cityCountry"></h4>
				</div>
				<div class="col-xl-6 col-lg-12">
					<h4 id="cityLat"></h4>
					<h4 id="cityLong"></h4>
				</div>
			</div>

			<hr>

			<div>
				<h3>Twitter Hash Tags</h3>
				<h4 id="cityTwitter"></h4>
			</div>
			
			<hr>

			<h3>Photos</h3>
			<div class="w3-content w3-display-container">
				<div id="cityPhotos"></div>

				<button class="btn btn-dark noselection w3-display-bottomleft" style="border-radius:0px;" onclick="plusDivs(-1)">&#10094;</button>
				<button class="btn btn-dark noselection w3-display-bottomright" style="border-radius:0px;" onclick="plusDivs(1)">&#10095;</button>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12" style="padding-bottom: 15px;">
			<h1>Weather Forecast</h1>
			<?php
				weatherAPI("55863414");
			?>
		</div>
	</div>
</div>
<?php
require_once('include/footer.html');
?>