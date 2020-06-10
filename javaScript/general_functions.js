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
|  Description: ##############################################
|				  
*===========================================================================*/
var slideIndex = 1;

window.onload = function() {
	showDivs(slideIndex);
};

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) 
  {
  	slideIndex = 1
  }    

  if (n < 1) 
  {
  	slideIndex = x.length
  }

  for (i = 0; i < x.length; i++) 
  {
    x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}

function openWeather(evt, day) {
  var i, tabcontent, tablinks, display;
  
  window.location.href='#weatherHours';

  tabcontent = document.getElementsByClassName("tabcontent");

  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  tablinks = document.getElementsByClassName("tablinks");

  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  display = document.getElementsByClassName(day);

  for (var i=0; i < display.length; i+=1)
  {
    display[i].style.display = 'inline-block';
  }
  
  evt.currentTarget.className += " active";
}