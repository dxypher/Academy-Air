AcademyAir::Application.routes.draw do
  
 # get "/flights" => "flights#index"

 root to: 'flights#index'
 get '/login' => 'sessions#new', as: :login
 get '/logout' => 'sessions#destroy', as: :logout
 resources :sessions
 resources :users
 get 'reservations/new/:id' => 'reservations#new'
 resources :reservations


 
 get '/mockup' => 'pages#home', :as => :mockup
 get '/help' => 'pages#help', :as => :help
  
end
