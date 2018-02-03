class ClientsController < ApplicationController

  get '/clients/:id' do
    @client = Client.find(params[:id])
    erb :'/clients/show'
  end

  get '/clients/signup' do
    erb :'/clients/signup'
  end

  post '/clients/show' do
    @client = Client.create(first_name: params["first_name"], last_name: params["last_name"], email: params["email"], password: params["password"])
    session[:user_id] = @client.id
    erb :'/application/login'
  end



end
