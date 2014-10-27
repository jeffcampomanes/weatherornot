class LocationLookup 

  attr_accessor :lat, :long, :today_data

  NYC = [40.714623, -74.006605]
  NYC_LAT = NYC[0]
  NYC_LONG = NYC[1] 

  ForecastIO.configure do |configuration|
  configuration.api_key = 'e22c0d81fca13afb33e88dfe674f91b8'
	end

	def initialize
		@lat = lat
		@long = long
	  @today_data = ForecastIO.forecast(self.lat, self.long) 

	end

	def get_user_location
  	@longitude_latitude = Geocoder.coordinates(open('http://whatismyip.akamai.com').read)
	end

###
end