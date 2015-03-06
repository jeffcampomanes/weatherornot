$(function(){
	console.log("page loaded")

function load(){
	SignedInGetWeather();
	SignedInGetWeatherEnter();
	SignedOutGetWeather();
	SignedOutGetWeatherEnter();
	Splash();
};
load();

function SignedInGetWeather(){
var search_button = $('i#search')
	search_button.on("click", function(event) {
	event.preventDefault();
		console.log("search button click");
	
	$.ajax({
		type:"GET",
		url:"/weather?zip=" + $('#zipcode').val()
		}).done(function(data){

			var weather_data = data;
				console.log(data);

			var ul_weather = $('#customSpinner');

			ul_weather.empty();	
			ul_weather.append(weather_data)
		})
	})
};

function SignedInGetWeatherEnter(){
 	var zipcode_input = $('#zipcode').keypress(function (event) {
 	var key = event.which;
 		if(key == 13){
   		console.log("enter button trigger");

   		$.ajax({
   			type:"GET",
				url:"/weather?zip=" + $('#zipcode').val()
				}).done(function(data){

				var weather_data = data;
					console.log(data);

				var ul_weather = $('#customSpinner');

				ul_weather.empty();	
				ul_weather.append(weather_data)
   		})
  	}
 	})
};

function SignedOutGetWeather(){
	var search_button_1 = $('i#search_1')
	search_button_1.on("click", function(event) {
	event.preventDefault();
		console.log("search button click");
	
	$.ajax({
		type:"GET",
		url:"/weather?zip=" + $('#zipcode_1').val()
		}).done(function(data){

			var weather_data_1 = data;
				console.log(data);

			var ul_weather_1 = $('#customSpinner');

				ul_weather_1.empty();	
				ul_weather_1.append(weather_data_1)
			// 	debugger			
		})
	})
};

function SignedOutGetWeatherEnter(){
 	var zipcode_input = $('#zipcode_1').keypress(function (event) {
 	var key = event.which;
 		if(key == 13){
   		console.log("enter button trigger");

   		$.ajax({
   			type:"GET",
				url:"/weather?zip=" + $('#zipcode_1').val()
				}).done(function(data){

				var weather_data_1 = data;
					console.log(data);

				var ul_weather_1 = $('#customSpinner');

				ul_weather_1.empty();	
				ul_weather_1.append(weather_data_1)
   		})
  	}
 	})
};

function Splash() {
	$(document).ready(function() {
    if($(".splash").is(":visible")) {
    	$(".wrapper").css({"opacity":"0"});
  	}
  		$(".splash-arrow").click(function() {
  				console.log("splash page trigger")
     	 $(".splash").slideUp("800", function() {
      	$(".wrapper").delay(100).animate({"opacity":"1.0"},800);
      });
   });
});
		$(window).scroll(function() {
    	$(window).off("scroll");
    		
    		$(".splash").slideUp("800", function() {
        	$("html, body").animate({"scrollTop":"1px"} + 100);
        	$(".wrapper").delay(100).animate({"opacity":"1.0"},800);
    	});
		});
};

////////end////////
});