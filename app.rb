require 'sinatra/base'
require './lib/person'
require './lib/datecalc'

class Greeter < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/details' do
    $person = Person.new(params[:name],params[:day],params[:month])
    $datecalc = Datecalc.new($person.day,$person.month)
    if $datecalc.birthday_today?
      redirect '/happybirthday'
    else
      redirect '/birthdaycounter'
    end
  end

  get '/happybirthday' do
    @name = $person.name
    erb(:happybirthday)
  end

  get '/birthdaycounter' do
    @name = $person.name
    @days_until_birthday = $datecalc.days_until_birthday
    erb(:birthdaycounter)
  end

  run! if app_file == $0
end
