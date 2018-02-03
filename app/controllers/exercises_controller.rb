class ExercisesController < ApplicationController

  get '/exercises/new' do
    erb :'/exercises/new'
  end

  post '/exercises/new' do
    @exercise = Exercise.create(title: params["name"], description: params["description"], sets: params["sets"], reps: params["reps"])
    redirect "/exercises/#{@exercise.id}"
  end

  get '/exercises/:id' do
    @exercise = Exercise.find(params[:id])
    erb :'/exercises/show'
  end
end
