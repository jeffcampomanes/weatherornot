$(function(){
	console.log("page loaded")

function load(){
	signed_in_get_weather();
	signed_out_get_weather();
};
load();

function signed_in_get_weather(){
var search_button = $('#search')
	search_button.on("click", function(event) {
	event.preventDefault();
		console.log("search button click");
	
	$.ajax({
		type:"GET",
		url:"//localhost:3000/weather?zip=" + $('#zipcode').val()
		}).done(function(data){

			var weather_data = data;
				console.log(data);

			var ul_weather = $('#weather');

			ul_weather.empty();	
			ul_weather.append(weather_data)
		})
	})
};

function signed_out_get_weather(){
	var search_button_1 = $('#search_1')
	search_button_1.on("click", function(event) {
	event.preventDefault();
		console.log("search button click");
	
	$.ajax({
		type:"GET",
		url:"//localhost:3000/weather?zip=" + $('#zipcode_1').val()
		}).done(function(data){

			var weather_data_1 = data;
				console.log(data);

			var ul_weather_1 = $('#weather_1');

				ul_weather_1.empty();	
				ul_weather_1.append(weather_data_1)
			// 	debugger			
		})
	})
};

////////end////////
});