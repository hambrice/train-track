class ExercisesController < ApplicationController


  get '/exercises/new' do
    check_access
    erb :'/exercises/new'
  end

  post '/exercises/new' do
    schedule = params["schedule"].join(", ")
    @exercise = Exercise.create(title: params["title"], description: params["description"], sets: params["sets"], reps: params["reps"], body_region: params["body_region"], schedule: schedule)
    redirect "/exercises/#{@exercise.id}"
  end

  get '/exercises/:id' do
    @exercise = Exercise.find(params[:id])
    erb :'/exercises/show'
  end

  get '/exercises/:id/edit' do
    @exercise = Exercise.find(params[:id])
    erb :'/exercises/edit'
  end

  patch '/exercises/:id' do
    @exercise = Exercise.find(params[:id])
    @exercise.safe_update(params)
    redirect "/exercises/#{@exercise.id}"
  end
end
