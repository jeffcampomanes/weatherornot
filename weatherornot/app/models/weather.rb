class Weather < ActiveRecord::Base
	has_many :users, dependent: :destroy

	# def initialize
 #  	weather_hash = fetch_weather
 #    assign_values(weather_hash)
	# end

	# def fetch_weather
 #    HTTParty.get("http://api.wunderground.com/api/be8f986fd83540b9/hourly/q/20001.xml")
	# end

	# def assign_values(weather_hash)
 #      hourly_forecast_response = weather_hash.parsed_response['response']['hourly_forecast']['forecast'].first
 #      self.temperature = hourly_forecast_response['temp']['english']
 #      self.icon = hourly_forecast_response['icon_url']
 # 	end


end


