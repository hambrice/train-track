require './config/environment'
require 'pry'
require 'rack-flash'
class ApplicationController < Sinatra::Base
  use Rack::Flash

  configure do
  set :public_folder, 'public'
  set :views, 'app/views'
  enable :sessions
  set :session_secret, "password_security"
end

  def is_logged_in?
    session[:user_id] != nil
  end

  def trainer?
    session[:is_trainer] != nil
  end

  def has_access?
    is_logged_in? & trainer?
  end

  def check_access
    if !has_access?
      redirect '/failure'
    end
  end


  get '/' do
    erb :'/application/index'
  end

  get '/login' do
    erb :'/application/login'
  end

  get '/logout' do
    session[:user_id] = nil
    session[:is_trainer] = nil
    redirect '/'
  end

  get '/signup' do
    erb :'/application/signup'
  end

  post '/show' do
    if Client.find_by(email: params["email"]) != nil
      @client = Client.find_by(email: params["email"])
      session[:user_id] = @client.id
      session[:is_trainer] = nil
      redirect "/clients/#{@client.id}"
    elsif Trainer.find_by(email: params["email"]) != nil
      @trainer = Trainer.find_by(email: params["email"])
      session[:user_id] = @trainer.id
      session[:is_trainer] = true
      redirect "/trainers/#{@trainer.id}"
    else
      erb :'clients/failure2'
    end

  end

  get '/tester' do
    erb :'/application/tester'
  end

  get '/failure' do
    erb :'/application/failure'
  end


end
