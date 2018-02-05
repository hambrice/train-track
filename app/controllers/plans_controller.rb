class PlansController < ApplicationController
@days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  get '/plans/new' do
    erb :'/plans/new'
  end

  post '/plans/:id' do
    #display message that exercise or rest must be selected
    @plan = Plan.create(title: params["title"])
    ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].each do |day|
      schedule = Schedule.new(day: day)
      params[day]["exercises"].each do |exercise|
        schedule.exercises << Exercise.find(exercise)
      end
      @plan.schedules << schedule
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
    #fix this whole client/plan id stuff
  end

  get '/plans/:id2' do
    @plan = Plan.find(params[:id2])
    erb :'/plans/show'
  end

  get '/plans/:id/edit' do
    @plan = Client.find(params[:id]).plan
    erb :'/plans/edit'
  end

  patch '/plans/:id' do
    @plan = Client.find(params[:id]).plan
    @plan.schedules.each do |schedule|
      schedule.exercises.clear
      params[schedule.day]["exercises"].each do |exercise|
        schedule.exercises << Exercise.find(exercise)
      end
    end
    redirect "/plans/#{@plan.id}"
  end
end
