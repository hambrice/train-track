class ExercisesController < ApplicationController

  get '/exercises/new' do
    erb :'/exercises/new'
  end
end
