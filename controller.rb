require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")

require_relative("./models/customer")
require_relative("./models/film")
require_relative("./models/screening")
require_relative("./models/ticket")
also_reload("./models/*")


get "/films" do
  @films = Film.all()
  erb(:index)
end

get "/films/:film_id" do
  @films = Film.find_by_id(params[:film_id])
erb(:film)
end
