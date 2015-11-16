require 'sinatra'
require './lib/tennis.rb'

get '/' do
  @@match = Tennis.new()
  @score =@@match.score
  erb :index
end

post '/anota' do
  @@match.anotacion(1)
  @score = @@match.score
  erb :index
end

post '/anota2' do
  @@match.anotacion(2)
  @score = @@match.score
  erb :index
end
