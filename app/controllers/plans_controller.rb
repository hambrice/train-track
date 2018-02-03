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
    erb :'/plans/show'
  end
end
