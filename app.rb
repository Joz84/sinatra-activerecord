require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

set :database, { adapter: "sqlite3", database: "database.sqlite3" }

require_relative "models/restaurant"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/new" do
  erb :new
end

post "/restaurants/create" do
  name = params[:name]
  description = params[:description]
  restaurant = Restaurant.new(name: name, description: description)
  restaurant.save
  redirect to("/")
end

get "/restaurants/:id" do
  id = params[:id]
  p id
  @restaurant = Restaurant.find(id)
  erb :show
end

get "/about" do
 erb :about
end
