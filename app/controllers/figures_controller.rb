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
      params[:fig][:titles].each do |id|
        @title = Title.find(id)
        @fig.titles << @title
      end
    end
    if params[:title][:name] != ""
      @title2 = Title.new(name: params[:title][:name])
      @fig.titles << @title2
    end
    if !!params[:fig][:land]
      params[:fig][:titles].each do |id|
        @title = Title.find(id)
        @fig.titles << @title
      end
    end
    if params[:title][:name] != ""
      @title2 = Title.new(name: params[:title][:name])
      @fig.titles << @title2
    end
  end

  get '/figure/:id' do
    @fig = Figure.find(params[:id])
    erb :'/figures/show'
  end
end
