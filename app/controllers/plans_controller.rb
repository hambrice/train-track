class PlansController < ApplicationController

  get '/plans/new' do
    erb :'/plans/new'
  end

  post '/plans' do
    @plan = Plan.create(title: params["title"])
    params["exercises"].each do |exercise|
      @plan.exercises << Exercise.find(exercise)
    end
    @plan.trainer = Trainer.find(session[:user_id])
    if session[:client_id] != nil
      Client.find(session[:client_id]).plan = @plan
    end

    erb :'/plans/show'
  end

  get '/plans/:id/new' do
    session[:client_id] = params[:id]
    erb :'/plans/new'
  end
end
