class ClientsController < ApplicationController

  get '/clients/signup' do
    erb :'/clients/signup'
  end

  post '/clients/show' do
    @client = Client.new(first_name: params["first_name"], last_name: params["last_name"], email: params["email"], password: params["password"])
    @session = session
    @session[:user_id] = @client.id
    erb :'/clients/show'
  end
end
