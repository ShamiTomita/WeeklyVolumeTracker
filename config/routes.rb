Rails.application.routes.draw do
  resources :muscle_groups
  resources :workouts
  resources :weeks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
