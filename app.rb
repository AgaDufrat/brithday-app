require 'sinatra/base'
require './lib/person'

class Greeter < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/details' do
    $person = Person.new(params[:name],params[:day],params[:month])
    redirect '/happybirthday'
  end

  get '/happybirthday' do
    @name = $person.name
    erb(:happybirthday)
  end

  post '/birthdaycounter' do
    
    erb(:birthdaycounter)
  end

  run! if app_file == $0
end
