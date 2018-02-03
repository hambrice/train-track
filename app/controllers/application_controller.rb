require './config/environment'
require 'pry'

class ApplicationController < Sinatra::Base
  configure do
  set :public_folder, 'public'
  set :views, 'app/views'
  enable :sessions
  set :session_secret, "password_security"
end

  def is_logged_in?
    session[:user_id] != nil
  end

  get '/' do
    erb :'/application/index'
  end

  get '/login' do
    erb :'/application/login'
  end

  get '/signup' do
    erb :'/application/signup'
  end

  post '/show' do
    if Trainer.find_by(email: params["email"]) == nil
      @client = Client.find_by(email: params["email"])
      session[:user_id] = @client.id
      redirect "/clients/#{@client.id}"
    elsif Trainer.find_by(email: params["email"]) != nil
      @trainer = Trainer.find_by(email: params["email"])
      session[:user_id] = @trainer.id
      redirect "/trainers/#{@trainer.id}"
    end

  end

  get '/tester' do
    erb :'/application/tester'
  end


end
