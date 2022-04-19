require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        @puppy = Puppy.new(params[:name], params[:breed], params[:age].to_i)
        
        erb :display_puppy
    end

end
