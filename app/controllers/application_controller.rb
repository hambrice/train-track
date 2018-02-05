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

  def safe_update(params)
    #binding.pry
    self.class.column_names.each do |column|
      if params[column] != "" && column != "id"
        self.update(column.to_sym => params[column])
      end
    end
    self.save
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
      session[:is_trainer] = true
      redirect "/trainers/#{@trainer.id}"
    end

  end

  get '/tester' do
    erb :'/application/tester'
  end

  get '/failure' do
    erb :'/application/failure'
  end


end
