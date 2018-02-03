class ClientsController < ApplicationController

  get '/clients/signup' do
    erb :'/clients/signup'
  end
end
