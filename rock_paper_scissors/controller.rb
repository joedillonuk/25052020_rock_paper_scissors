require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')

require_relative('./models/game.rb')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/about_us' do
  erb(:about_us)
end


get '/play' do
  erb(:play)
end

get '/play/:choice1/:choice2' do
@result = Game.play(params[:choice1], params[:choice2])
erb(:result)
end

post '/result' do
choice1 = params[:choice1]
choice2 = params[:choice2]
@result = Game.play(choice1, choice2)
erb(:result)
end


# get '/play/:choice1/choice2' do
#   @gameresult =
# end


get '/add/:num1/:num2' do
  @calculation = Calculator.add(params[:num1].to_i,params[:num2].to_i)
erb(:result)
end

get '/subtract/:num1/:num2' do
  @calculation = Calculator.subtract(params[:num1].to_i,params[:num2].to_i)
erb(:result)
end

get '/multiply/:num1/:num2' do
  @calculation = Calculator.multiply(params[:num1].to_i,params[:num2].to_i)
erb(:result)
end

get '/divide/:num1/:num2' do
  @calculation = Calculator.divide(params[:num1].to_i,params[:num2].to_i)
erb(:result)
end
