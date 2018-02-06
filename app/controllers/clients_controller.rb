class ClientsController < ApplicationController

  get '/clients/new' do
    erb :'/clients/new'
  end

  post '/clients/new' do
    @client = Client.create(email: params["email"])
    @trainer = Trainer.find(session[:user_id])
    @trainer.clients << @client
    redirect "/trainers/#{@trainer.id}"
  end

  get '/clients/:id' do
    @client = Client.find(params[:id])
    erb :'/clients/show'
  end

  get '/clients/signup' do
    erb :'/clients/signup'
  end

  post '/clients/show' do
    @client = Client.find_by(email: params["email"])
    @client.update(first_name: params["first_name"], last_name: params["last_name"], password: params["password"])
    session[:user_id] = @client.id
    redirect "/clients/#{@client.id}"
  end




end
