
require_relative '../../config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end
  
  get '/articles/new' do 
    erb :new
  end 
  
  post '/articles' do 
<<<<<<< HEAD
    @article = Article.create(title: params[:title], content: params[:content])
    redirect "articles/#{@article.id}"
=======
    Article.create(title: params[:title], content: params[:content])
    erb :show
>>>>>>> 7e369210950c43cf2a2dcff85f3888297c49ad7a
  end
  
  get '/articles' do 
    @articles = Article.all
    erb :index
  end
  
  get '/articles/:id' do
    @article = Article.find(params[:id])
    erb :show
  end
  
  get '/articles/:id/edit' do 
<<<<<<< HEAD
    @article = Article.find(params[:id])
    erb :edit
  end
  
  patch '/articles/:id' do 
    @article = Article.find(params[:id])
    @article.update(title: params[:title], content: params[:content])
    erb :show
  end
  
  delete '/articles/:id' do 
    @article = Article.find(params[:id])
    @article.destroy
    redirect "/articles"
=======
    erb :edit
  end
  
  delete '/articles/:id' do 
    @article = Article.find(params[:id])
    @article.destroy
    
    erb :index
>>>>>>> 7e369210950c43cf2a2dcff85f3888297c49ad7a
  end
  
end
