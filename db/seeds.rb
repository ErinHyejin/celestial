require 'open-uri'
require 'json'

# sample
 # "id": "1",
 #    "mass": "21",
 #    "nametype": "Valid",
 #    "geolocation": {
 #      "needs_recoding": false,
 #      "longitude": "6.08333",
 #      "latitude": "50.775"
 #    },
 #    "recclass": "L5",
 #    "fall": "Fell",
 #    "name": "Aachen",
 #    "year": "1880-01-01T00:00:00",
 #    "reclong": "6.083330",
 #    "reclat": "50.775000"

json_meteorites = ""

open("https://data.nasa.gov/resource/gh4g-9sfh.json") do |all_meteorites|
  all_meteorites.each_line {|individual_meteorite| json_meteorites << individual_meteorite}
end

hash_meteorites = JSON.parse(json_meteorites)

hash_meteorites.map!{|meteorite_args| meteorite_args.delete_if{|key, value| key == "geolocation" || key == "id"}}
hash_meteorites.each do |meteorite_args|
  meteorite = Meteorite.create(meteorite_args)
end
