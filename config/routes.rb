Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "hike#index"
  # index route
  get 'hikes' => 'hike#index'
  # show route
  get 'hikes/:id' => 'hike#show'
end
