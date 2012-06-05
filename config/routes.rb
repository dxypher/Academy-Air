AcademyAir::Application.routes.draw do
  

 resources :users

 root to: 'flights#index'
 get '/login' => 'sessions#new', as: :login
 get '/logout' => 'sessions#destroy', as: :logout
 resources :sessions
 
 get 'reservations/new/:id' => 'reservations#new'
 resources :reservations
 resources :flights


 
 get '/mockup' => 'pages#home', :as => :mockup
 get '/help' => 'pages#help', :as => :help
  
end
