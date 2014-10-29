class RenameWeatherorNotTable < ActiveRecord::Migration
  def change
  	rename_table :weather_or_nots, :users
  end
end
