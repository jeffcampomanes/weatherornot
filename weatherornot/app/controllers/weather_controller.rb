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

end