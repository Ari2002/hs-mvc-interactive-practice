require 'bundler'
Bundler.require

require_relative './models/dog.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get "/dog" do
    @dog1 = Dog.new("Fiji","Kab", 5)
    erb :dog
    end

get "/info" do
  erb :info
  end
  get "/color" do
    erb :color
  end 
end 