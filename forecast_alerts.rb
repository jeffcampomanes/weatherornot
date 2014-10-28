require 'httparty'
require 'pry'

#alerts for NYC
alerts = HTTParty.get('http://api.wunderground.com/api/be8f986fd83540b9/alerts/q/NY/New_York.json')      
alerts["response"]["alerts"]

# example:
# {
#   "response": {
#   "version": "0.1",
#   "termsofService": "http://www.wunderground.com/weather/api/d/terms.html",
#   "features": {
#   "alerts": 1
#   }
#   },
#   "alerts": [{
#   "type": "HEA",
#   "description": "Heat Advisory",
#   "date": "11:14 am CDT on July 3, 2012",
#   "date_epoch": "1341332040",
#   "expires": "7:00 AM CDT on July 07, 2012",
#   "expires_epoch": "1341662400",
#   "message": "\u000A...Heat advisory remains in effect until 7 am CDT Saturday...\u000A\u000A* temperature...heat indices of 100 to 105 are expected each \u000A afternoon...as Max temperatures climb into the mid to upper \u000A 90s...combined with dewpoints in the mid 60s to around 70. \u000A Heat indices will remain in the 75 to 80 degree range at \u000A night. \u000A\u000A* Impacts...the hot and humid weather will lead to an increased \u000A risk of heat related stress and illnesses. \u000A\u000APrecautionary/preparedness actions...\u000A\u000AA heat advisory means that a period of hot temperatures is\u000Aexpected. The combination of hot temperatures and high humidity\u000Awill combine to create a situation in which heat illnesses are\u000Apossible. Drink plenty of fluids...stay in an air-conditioned\u000Aroom...stay out of the sun...and check up on relatives...pets...\u000Aneighbors...and livestock.\u000A\u000ATake extra precautions if you work or spend time outside. Know\u000Athe signs and symptoms of heat exhaustion and heat stroke. Anyone\u000Aovercome by heat should be moved to a cool and shaded location.\u000AHeat stroke is an emergency...call 9 1 1.\u000A\u000A\u000A\u000AMjb\u000A\u000A\u000A",
#   "phenomena": "HT",
#   "significance": "Y",
#   "ZONES": [
#   {
#   "state":"UT",
#   "ZONE":"001"
#   }
#   ],
#   "StormBased": {
#   "vertices":[
#   {
#   "lat":"38.87",
#   "lon":"-87.13"
#   }
#   ,
#   {
#   "lat":"38.89",
#   "lon":"-87.13"
#   }
#   ,
#   {
#   "lat":"38.91",
#   "lon":"-87.11"
#   }
#   ,
#   {
#   "lat":"38.98",
#   "lon":"-86.93"
#   }
#   ,
#   {
#   "lat":"38.87",
#   "lon":"-86.69"
#   }
#   ,
#   {
#   "lat":"38.75",
#   "lon":"-86.3"
#   }
#   ,
#   {
#   "lat":"38.84",
#   "lon":"-87.16"
#   }
#   ],
#   "Vertex_count":7,
#   "stormInfo": {
#   "time_epoch": 1363464360,
#   "Motion_deg": 243,
#   "Motion_spd": 18,
#   "position_lat":38.90,
#   "position_lon":-86.96
#   }
#   }
#   }]
}