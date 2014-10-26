class WeatherLookup
	attr_accessor :temperature, :icon, :weekday_name, :tomorrow, :tomorrow_condition, :day_one, :day_one_condition, :day_two, :day_two_condition, :day_three, :day_three_condition, :day_four, :day_four_condition, :day_five, :day_five_condition, :day_six, :day_six_condition, :day_seven, :day_seven_condition

	def initialize
  	hourly_weather_hash = fetch_hourly_weather
    hourly_temperature(hourly_weather_hash)

    tomorrow_weather_hash = fetch_tomorrow_weather
    tomorrow_forecast(tomorrow_weather_hash)

    week_weather_hash = fetch_week_forecast
    week_forecast(week_weather_hash)
	end

	def fetch_hourly_weather
    HTTParty.get("http://api.wunderground.com/api/be8f986fd83540b9/hourly/q/10175.xml")
	end

	def hourly_temperature(hourly_weather_hash)
    hourly_forecast_response = hourly_weather_hash.parsed_response['response']['hourly_forecast']['forecast'].first
    self.temperature = hourly_forecast_response['temp']['english']
    self.icon = hourly_forecast_response['icon_url']
    self.weekday_name = hourly_forecast_response['FCTTIME']['pretty']
 	end

  def fetch_tomorrow_weather
    HTTParty.get("http://api.wunderground.com/api/be8f986fd83540b9/forecast/q/NY/New_York.xml")
  end

  def tomorrow_forecast(tomorrow_weather_hash)
    tomorrow_forecast_response = tomorrow_weather_hash.parsed_response['response']['forecast']['txt_forecast']['forecastdays']
    self.tomorrow = tomorrow_forecast_response['forecastday'][2]['title']
    self.tomorrow_condition = tomorrow_forecast_response['forecastday'][2]['fcttext']
  end

  def fetch_week_forecast
    HTTParty.get('http://api.wunderground.com/api/be8f986fd83540b9/forecast10day/q/NY/New_York.xml')  
  end

  def week_forecast(week_weather_hash)
    weekly_forecast_response = week_weather_hash.parsed_response['response']['forecast']['txt_forecast']['forecastdays']
    self.day_one = weekly_forecast_response['forecastday'][0]['title']
    self.day_one_condition = weekly_forecast_response['forecastday'][0]['fcttext']
    
    self.day_two = weekly_forecast_response['forecastday'][2]['title']
    self.day_two_condition = weekly_forecast_response['forecastday'][2]['fcttext']

    self.day_three = weekly_forecast_response['forecastday'][4]['title']
    self.day_three_condition = weekly_forecast_response['forecastday'][4]['fcttext']

    self.day_four = weekly_forecast_response['forecastday'][6]['title']
    self.day_four_condition = weekly_forecast_response['forecastday'][6]['fcttext']

    self.day_five= weekly_forecast_response['forecastday'][8]['title']
    self.day_five_condition = weekly_forecast_response['forecastday'][8]['fcttext']
 
    self.day_six = weekly_forecast_response['forecastday'][10]['title']
    self.day_six_condition = weekly_forecast_response['forecastday'][10]['fcttext']
    
    self.day_seven = weekly_forecast_response['forecastday'][12]['title']
    self.day_seven_condition = weekly_forecast_response['forecastday'][12]['fcttext']
  end

end
