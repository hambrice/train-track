class ExercisesController < ApplicationController


  get '/exercises/new' do
    check_access
    erb :'/exercises/new'
  end

  post '/exercises/new' do
    @exercise = Exercise.create(title: params["name"], description: params["description"], sets: params["sets"], reps: params["reps"], body_region: params["body_region"])
    redirect "/exercises/#{@exercise.id}"
  end

  get '/exercises/:id' do
    @exercise = Exercise.find(params[:id])
    erb :'/exercises/show'
  end

  get '/exercises/:id/edit' do
    erb :'/exercises/edit'
  end
end
