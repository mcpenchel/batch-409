require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all

  erb :homepage
end

get "/restaurant/:id" do
  @restaurant = Restaurant.find(params[:id])

  erb :show_page
end

get "/new_restaurant" do
  erb :new_restaurant
end

post "/restaurants" do
  Restaurant.create(
    name: params[:name],
    address: params[:address],
    type_of_food: params[:type_of_food],
    rating: 0
  )

  redirect "/"
end
