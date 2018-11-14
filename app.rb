require 'sinatra/base'
require './lib/person'

class Greeter < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/details' do
    $person = Person.new(params[:name])
    erb(:happybirthday)
    redirect '/happybirthday'
  end

  get '/happybirthday' do
    @name = $person.name
    erb(:happybirthday)
  end

  post '/birthdaycounter' do
    today = Date.today
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    birthday = DateTime.new(today.year,@month,@day) if @month > today.month
    @days_until_birtday = birthday - today
    erb(:birthdaycounter)
  end

  run! if app_file == $0
end
