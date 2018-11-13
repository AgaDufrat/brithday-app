require 'sinatra/base'

class Greeter < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/happybirthday' do
    @name = params[:name]
    erb(:happybirthday)
  end

  run! if app_file == $0
end
