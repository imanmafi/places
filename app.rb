require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places")

  get("/") do
    @place = Place.all()
    erb(:index)
  end

  post("/places") do
    place = params.fetch("place")
    place = Place.new(place)
    place.save()
    erb(:success)
  end
