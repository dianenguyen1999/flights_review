Rails.application.routes.draw do

  resources :pages
  root 'pages#index'
  
  namespace :api do
    namespace :v1 do
      resources :airlines, param: :slug
      resources :reviews
    end
  end

  get '*path', to: 'pages#index', via: :all
  
  # get '/pages', to: 'pagrun rails generate scaffold pages



end