class CreateWeatherOrNot < ActiveRecord::Migration
  def change
    create_table :weather_or_nots do |t|
    	t.string :password_digest
    	t.string :email
    	t.string :gender
    end
  end
end
