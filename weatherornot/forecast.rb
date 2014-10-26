require 'httparty'
require 'pry'


#daily forecast for NYC
# forecast["forecast"]["txt_forecast"]["forecastday"][0]  
forecast= HTTParty.get('http://api.wunderground.com/api/be8f986fd83540b9/forecast/q/NY/New_York.xml')
forecast["forecast"]["txt_forecast"]["forecastday"][0]["title"] #days

forecast["forecast"]["simpleforecast"]["forecastday"][0]["high"]["fahrenheit"] #temp high
forecast["forecast"]["simpleforecast"]["forecastday"][0]["low"]["fahrenheit"] #temp low

forecast["forecast"]["txt_forecast"]["forecastday"][0]["fcttext"] #weather description

