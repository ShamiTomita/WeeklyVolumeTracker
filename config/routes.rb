Rails.application.routes.draw do
  resources :days


  resources :muscle_groups
  resources :workouts
  resources :weeks

  post 'weeks/add' => "weeks#add"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "weeks#index"
end
