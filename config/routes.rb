# frozen_string_literal: true

Rails.application.routes.draw do
  resources :new_bands
  resources :metal_heds
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # # metal_heds routes
  # get '/metal_heds' => 'metal_heds#index'
  # get '/metal_heds/:id' => 'metal_heds#show'
  # post '/metal_heds' => 'metal_heds#create'
  # patch '/metal_heds/:id' => 'metal_heds#update'
  # delete '/metal_heds/:id' => 'metal_heds#destroy'
  #
  # # new_bands routes
  # get '/new_bands' => 'new_bands#index'
  # get '/new_bands/:id' => 'new_bands#show'
  # post '/new_bands' => 'new_bands#create'
  # patch '/new_bands/:id' => 'new_bands#update'
  # delete '/new_bands/:id' => 'new_bands#destroy'
end
