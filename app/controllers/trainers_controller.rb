class TrainersController < ApplicationController



  get '/trainers/signup' do
    erb :'/trainers/signup'
  end

  post '/trainers/show' do
    if !params["first_name"].empty? && !params["last_name"].empty? && !params["email"].empty? && !params["password"].empty?
      @trainer = Trainer.create(first_name: params["first_name"], last_name: params["last_name"], email: params["email"], password: params["password"])
      session[:user_id] = @trainer.id
      session[:is_trainer] = true
      redirect "/trainers/#{@trainer.id}"
    else
      flash[:message] = "Please fill in all areas!"
      erb :'/trainers/signup'
    end

  end

  get '/trainers/:id' do
    check_access
    #  redirect '/failure'
    #else
      @trainer = Trainer.find(params[:id])
      erb :'/trainers/show'
  #  end
  end

end
