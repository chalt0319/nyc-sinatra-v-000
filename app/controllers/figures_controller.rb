class FiguresController < ApplicationController

  get '/figures' do
    erb :'/figures/index'
  end

  get '/figure/:id' do
    @fig = Figure.find(params[:id])
    erb :'/figures/show'
  end

  get '/figure/new' do
    erb :'/figures/new'
  end

  post '/figres/new' do

  end
end
