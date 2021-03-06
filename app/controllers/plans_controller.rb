class PlansController < ApplicationController
@days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  get '/plans/new' do
    erb :'/plans/new'
  end

  post '/plans/:id' do
    #display message that exercise or rest must be selected
    ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].each do |day|
      if params[day] == nil
        session[:error] = "input error"
        redirect "/plans/#{params[:id]}/new"
      end
    end
    @plan = Plan.create
    ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"].each do |day|
      schedule = Schedule.new(day: day)
      if params[day]["rest"] == "true"
        schedule.update(rest?: true)

      else
        params[day]["exercises"].each do |exercise|
          schedule.exercises << Exercise.find(exercise)
        end
      end
      @plan.schedules << schedule
    end
    @plan.trainer = Trainer.find(session[:user_id])
    @client = Client.find(params[:id])
    @client.plan = @plan
    erb :'/plans/show'
  end

  get '/plans/:id/new' do
    check_access
    if session[:error] == "input error"
      flash[:message] = "Please make sure that every day has at least one exercise OR is designated a rest day!"
      session[:error] = nil
    end
    @client = Client.find(params[:id])
    if @client.trainer.id != session[:user_id]
      redirect '/trainers/failure'
    end
    if @client.plan != nil
      redirect "/plans/#{@client.id}"
    end
    session[:client_id] = params[:id]
    erb :'/plans/new'
    #fix this whole client/plan id stuff
  end

  get '/plans/:id' do
    check_access
    @client = Client.find(params[:id])
    @plan = @client.plan
    erb :'/plans/show'
  end

  get '/plans/:id/edit' do
    check_access
    if session[:error] == "edit error"
      flash[:message] = "Please make sure that every day has at least one exercise OR is designated a rest day!"
    end
    @client = Client.find(params[:id])
    if @client.trainer.id != session[:user_id]
      redirect '/trainers/failure'
    end
    @plan = Client.find(params[:id]).plan
    erb :'/plans/edit'
  end

  patch '/plans/:id' do
    @plan = Client.find(params[:id]).plan
    @plan.schedules.each do |schedule|
      schedule.exercises.clear
      if params[schedule.day]["rest"] == "true"
        schedule.update(rest?: true)

      else
        schedule.update(rest?: false)
        params[schedule.day]["exercises"].each do |exercise|
          schedule.exercises << Exercise.find(exercise)
        end
      end
    end
    redirect "/plans/#{@plan.client.id}"
  end

  get '/plans/:id/delete' do
    check_access
    @client = Client.find(params[:id])
    @client.plan = nil
    redirect "/trainers/#{session[:user_id]}"
  end


end
