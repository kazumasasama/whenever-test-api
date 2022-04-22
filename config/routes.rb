Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :available_times except: [:put]
  get "available_times" => "available_times#index"
  post "add_time" => "available_times#add_time"
end
