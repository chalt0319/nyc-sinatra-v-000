class FiguresController < ApplicationController

  get '/figures' do
    erb :'/figures/index'
  end

  get '/figure/new' do
    erb :'/figures/new'
  end

  post '/figres/new' do
    @fig = Figure.new(name: params[:fig][:name])
    if !!params[:fig][:titles]
  end

  get '/figure/:id' do
    @fig = Figure.find(params[:id])
    erb :'/figures/show'
  end
end
