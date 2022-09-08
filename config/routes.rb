Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "hike#index"
  # index route
  get 'hikes' => 'hike#index', as: 'hikes'
  # new route 
  get 'hikes/new' => 'hike#new', as: 'new_hike'
  # show route
  get 'hikes/:id' => 'hike#show', as: 'hike'
  # create route
  post 'hikes' => 'hike#create'
  # Edit route
  get 'hikes/edit/:id' => 'hike#edit', as: 'edit_hike'
  # Update route
  patch 'hikes/:id' => 'hike#update' 
  # Destroy route
  delete 'hikes/:id' => 'hike#destroy', as: 'delete_hike'
end
