$(function(){
	console.log("page loaded")

var search_button = $('#search')
	search_button.on("click", function(event) {
	event.preventDefault();
		console.log("search button click");
	
	$.ajax({
		type:"GET",
		url:"http://localhost:3000/forecast?zip=" + $('#zipcode').val()
		}).done(function(data){

			var weather_data = data;
				console.log(data);

			var ul_weather = $('#weather');

			// for (i=0; i < weather_data.length; i++) {
				ul_weather.empty();	
				ul_weather.append(weather_data)
			// 	debugger			
			// }
		})
	})







////////end////////
});