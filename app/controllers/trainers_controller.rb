class TrainersController < ApplicationController

  get '/trainers/:id' do
    @trainer = Trainer.find(params[:id])
    erb :'/trainers/show'
  end

  get '/trainers/signup' do
    erb :'/trainers/signup'
  end

  post '/trainers/show' do
    @trainer = Trainer.create(first_name: params["first_name"], last_name: params["last_name"], email: params["email"], password: params["password"])
    @session = session
    @session[:user_id] = @trainer.id
    erb :'/application/login'
  end


end
