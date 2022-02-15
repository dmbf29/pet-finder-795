Rails.application.routes.draw do
  root to: 'pets#index'
  # verb '/path', to: 'controller#action', as: :prefix
  # the prefix is only connected to the path (not the http verb)

  # Create
  # Form
  get '/pets/new', to: 'pets#new', as: :new_pet
  # Where the form gets sent
  post '/pets', to: 'pets#create', as: :pets

  # Read
  # All
  get '/pets', to: 'pets#index'
  # One
  get '/pets/:id', to: 'pets#show', as: :pet

  # Update
  # Form
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
  # Where the form gets sent
  patch '/pets/:id', to: 'pets#update'

  # Delete
  delete '/pets/:id', to: 'pets#destroy'
  # resources :pets
end
