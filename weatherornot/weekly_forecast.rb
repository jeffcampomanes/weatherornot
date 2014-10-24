require 'httparty'
require 'pry'


# 7 day forecast for NYC
# weekly["forecast"]["txt_forecast"]["forecastday"]
weekly = HTTParty.get('http://api.wunderground.com/api/be8f986fd83540b9/forecast10day/q/NY/New_York.json')
weekly["forecast"]["simpleforecast"]["forecastday"] # entire week


#temperature high and lows in farhenheit including short name for days
weekly["forecast"]["simpleforecast"]["forecastday"][0]["date"]["weekday_short"] 
weekly["forecast"]["simpleforecast"]["forecastday"][0]["high"]["fahrenheit"] 
weekly["forecast"]["simpleforecast"]["forecastday"][0]["low"]["fahrenheit"] 

weekly["forecast"]["simpleforecast"]["forecastday"][2]["date"]["weekday_short"] 
weekly["forecast"]["simpleforecast"]["forecastday"][2]["high"]["fahrenheit"] 
weekly["forecast"]["simpleforecast"]["forecastday"][2]["low"]["fahrenheit"] 

weekly["forecast"]["simpleforecast"]["forecastday"][4]["date"]["weekday_short"] 
weekly["forecast"]["simpleforecast"]["forecastday"][4]["high"]["fahrenheit"] 
weekly["forecast"]["simpleforecast"]["forecastday"][4]["low"]["fahrenheit"] 

weekly["forecast"]["simpleforecast"]["forecastday"][6]["date"]["weekday_short"] 
weekly["forecast"]["simpleforecast"]["forecastday"][6]["high"]["fahrenheit"] 
weekly["forecast"]["simpleforecast"]["forecastday"][6]["low"]["fahrenheit"] 

weekly["forecast"]["simpleforecast"]["forecastday"][8]["date"]["weekday_short"] 
weekly["forecast"]["simpleforecast"]["forecastday"][8]["high"]["fahrenheit"] 
weekly["forecast"]["simpleforecast"]["forecastday"][8]["low"]["fahrenheit"] 

weekly["forecast"]["simpleforecast"]["forecastday"][10]["date"]["weekday_short"] 
weekly["forecast"]["simpleforecast"]["forecastday"][10]["high"]["fahrenheit"] 
weekly["forecast"]["simpleforecast"]["forecastday"][10]["low"]["fahrenheit"] 

weekly["forecast"]["simpleforecast"]["forecastday"][12]["date"]["weekday_short"] 
weekly["forecast"]["simpleforecast"]["forecastday"][12]["high"]["fahrenheit"] 
weekly["forecast"]["simpleforecast"]["forecastday"][12]["low"]["fahrenheit"] 

