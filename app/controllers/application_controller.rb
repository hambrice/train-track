require 'config/environment'
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

end
