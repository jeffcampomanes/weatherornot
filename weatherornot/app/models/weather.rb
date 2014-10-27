class Weather < ActiveRecord::Base
	has_many :users, dependent: :destroy

end


