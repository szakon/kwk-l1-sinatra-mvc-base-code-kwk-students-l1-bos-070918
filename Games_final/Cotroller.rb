require 'bundler'
Bundler.require
# require_relative 'models/questions'

class MyApp < Sinatra::Base

 get'/' do
  erb :index
 end



 # get '/breakfast.erb' do
 #   erb :breakfast
 # end
 #
 # get '/snack' do
 #   erb :snack
 # end
 #
 # get '/dessert' do
 #   erb :dessert
 # end

 post  '/results' do
   answers = params.values
   @total= 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total
   
   
  if @total == 2
    erb :action1
    
  elsif @total == 3 
    erb :action2
  elsif @total == 4
    erb :puzzle1
  elsif @total == 5
    erb :puzzle2
  elsif @total == 6
    erb :dumb1
  elsif @total == 7
    erb :dumb2
  elsif @total == 8
    erb :arcade1
  elsif @total == 9
    erb :arcade2
  end 
     
   
   

  # @cookie = cookie_chooser(@total)
  # if @cookie == "cranberry"
  #   erb :cranberry
  # elsif @cookie == "trailmix"
  #   erb :trailmix
  # elsif @cookie == "chocolatey"
  #   erb :chocolatey
  # end
end
end


