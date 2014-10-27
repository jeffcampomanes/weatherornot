class WeatherController < ApplicationController
  

 def index
    @user = User.find_by(id: session[:user_id])
    weather = Weather.all
    
    if @user
      respond_to do |format|
      format.json { render :json => weather}
      format.html { render :index }
    end
   
    else
      redirect_to "/login"
    end
  
  end

  def show
    @weather_lookup = WeatherLookup.new(params[:zip])
  end

  # def show_weather
  #   current_weather= HTTParty.get("http://api.wunderground.com/api/be8f986fd83540b9/hourly/q/10175.json")

  #     date_and_time= current_weather['hourly_forecast'][0]['FCTTIME']['pretty'] #date and time 
  #     day = current_weather['hourly_forecast'][0]['FCTTIME']['weekday_name'] #name of day 
  #     current_temp = current_weather['hourly_forecast'][0]['temp']['english'] #current temperature
  #     weather_icon = current_weather['hourly_forecast'][0]['condition']['icon_url'] #weather icon 

  #   tomorrow_weather= HTTParty.get("http://api.wunderground.com/api/be8f986fd83540b9/forecast/q/NY/New_York.json")

  #     tomorrow_high_temp= tomorrow_weather["forecast"]["simpleforecast"]["forecastday"][2]["high"]["fahrenheit"] #temp high
  #     tomorrow_low_temp= tomorrow_weather["forecast"]["simpleforecast"]["forecastday"][2]["low"]["fahrenheit"] #temp low
  #     tomorrow_weather_description= tomorrow_weather["forecast"]["txt_forecast"]["forecastday"][2]["fcttext"] #weather description
  
  #   week_weather= HTTParty.get("http://api.wunderground.com/api/be8f986fd83540b9/forecast10day/q/NY/New_York.json")  

  #     week = [
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][0]["date"]["weekday"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][0]["high"]["fahrenheit"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][0]["low"]["fahrenheit"], 

  #       week_weather["forecast"]["simpleforecast"]["forecastday"][2]["date"]["weekday"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][2]["high"]["fahrenheit"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][2]["low"]["fahrenheit"], 

  #       week_weather["forecast"]["simpleforecast"]["forecastday"][4]["date"]["weekday"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][4]["high"]["fahrenheit"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][4]["low"]["fahrenheit"], 

  #       week_weather["forecast"]["simpleforecast"]["forecastday"][6]["date"]["weekday"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][6]["high"]["fahrenheit"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][6]["low"]["fahrenheit"], 

  #       week_weather["forecast"]["simpleforecast"]["forecastday"][8]["date"]["weekday"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][8]["high"]["fahrenheit"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][8]["low"]["fahrenheit"], 

  #       week_weather["forecast"]["simpleforecast"]["forecastday"][10]["date"]["weekday"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][10]["high"]["fahrenheit"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][10]["low"]["fahrenheit"], 

  #       week_weather["forecast"]["simpleforecast"]["forecastday"][12]["date"]["weekday"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][12]["high"]["fahrenheit"], 
  #       week_weather["forecast"]["simpleforecast"]["forecastday"][12]["low"]["fahrenheit"] 
  #     ]

  #   weather = {
  #       :day_and_time => day_and_time,
  #       :day => day,
  #       :current_temp => current_temp,

  #       :tomorrow_high_temp => tomorrow_high_temp,
  #       :tomorrow_low_temp => tomorrow_low_temp,
  #       :tomorrow_weather_description => tomorrow_weather_description, 

  #       :week => week
  #     }
  #     render :json => results
  

  # end 

### 
end