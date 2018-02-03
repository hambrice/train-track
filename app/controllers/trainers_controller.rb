class TrainersController < ApplicationController

  get '/trainers/signup' do
    erb :'/trainers/signup'
  end

  post '/trainers/show' do
    @trainer = Trainer.new(first_name: params["first_name"], last_name: params["last_name"], email: params["email"], password: params["password"])
    @session = session
    @session[:user_id] = @trainer.id
    erb :'trainers/show'
  end

end
