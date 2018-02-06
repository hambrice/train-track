class ClientsController < ApplicationController

  get '/clients/new' do
    erb :'/clients/new'
  end

  post '/clients/new' do
    @client = Client.create(first_name: "user", last_name: "user", email: params["email"], password: "user")
    @client.update(first_name: nil, last_name: nil, email: params["email"], password: nil)
    @trainer = Trainer.find(session[:user_id])
    @trainer.clients << @client
    @trainer.save
    redirect "/trainers/#{@trainer.id}"
  end

  get '/clients/signup' do
    erb :'/clients/signup'
  end

  post '/clients/show' do
    @client = Client.find_by(email: params["email"])
    if @client == nil
      redirect '/clients/failure'
    end
    @client.update(first_name: params["first_name"], last_name: params["last_name"], password: params["password"])
    session[:user_id] = @client.id
    redirect "/clients/#{@client.id}"
  end

  get '/clients/failure' do
    erb :'/clients/failure'
  end

  get '/clients/:id' do
    @client = Client.find(params[:id])
    erb :'/clients/show'
  end

end
