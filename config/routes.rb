Rails.application.routes.draw do


  resources :projects
  get 'topics/new'
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root 'pages#index'
 get 'pages/help'
 get 'pages/about'

 resources :users

 get '/login', to:'sessions#new'
 post '/login', to:'sessions#create'
 delete '/logout', to:'sessions#destroy'

 resources :topics
 post "likes", to: "likes#create"
 delete "likes" ,to: "likes#destroy"

 get  'index' =>'messages#index'
 post 'confirm' => 'messages#confirm'
 post 'done' => 'messages#done'
end
