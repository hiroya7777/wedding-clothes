Rails.application.routes.draw do

  get 'topics/new'
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'pages#index'
 get 'pages/help'

 resources :users

 get '/login', to:'sessions#new'
 post '/login', to:'sessions#create'
 delete '/logout', to:'sessions#destroy'

 resources :topics
 post "likes/:topic_id/create" => "likes#create"
 post "likes/:topic_id/destroy" => "likes#destroy"
end
