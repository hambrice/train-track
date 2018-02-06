class ClientsController < ApplicationController

  get '/clients/new' do
    check_access
    @array = []
     Client.all.each do |client|
       if client.first_name == "user"
         @array << client
       end
      end
    erb :'/clients/new'
  end

  post '/clients/new' do
    @client = Client.create(first_name: "user", last_name: "user", email: params["email"], password: "user")
    #@client.update(first_name: nil, last_name: nil, email: params["email"], password: nil)
    @trainer = Trainer.find(session[:user_id])
    @trainer.clients << @client
    @trainer.save
    @client.trainer = @trainer
    @client.save
    redirect "/trainers/#{@trainer.id}"
  end

  get '/clients/signup' do
    erb :'/clients/signup'
  end

  post '/clients/show' do
    if !params["first_name"].empty? && !params["last_name"].empty? && !params["email"].empty? && !params["password"].empty?
      @client = Client.find_by(email: params["email"])
      if @client == nil
        redirect '/clients/failure1'
      elsif @client.first_name != nil
        redirect '/clients/failure2'
      end
    @client.update(first_name: params["first_name"], last_name: params["last_name"], password: params["password"])
    session[:user_id] = @client.id
    redirect "/clients/#{@client.id}"
    else
      flash[:message] = "Please fill in all areas!"
      erb :'/clients/signup'
    end
  end

  get '/clients/failure1' do
    erb :'/clients/failure1'
  end

  get '/clients/failure2' do
    erb :'/clients/failure2'
  end

  get '/clients/:id' do
  #  @params[:id] = params[:id]
    #if
    #  redirect '/failure'
    #else
      @client = Client.find(params[:id])
      redirect :'/clients/show'
    #end
  end

end
