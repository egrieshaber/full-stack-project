# frozen_string_literal: true

Rails.application.routes.draw do
  resources :metal_heds
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # metal_heds routes
  get '/metal-heds' => 'metal_heds#index'
  get '/metal_heds/:id' => 'metal_heds#show'
  post '/metal_heds' => 'metal_heds#create'
  patch '/metal_heds/:id' => 'metal_heds#update'
  delete '/metal_heds/:id' => 'metal_heds#destroy'
end
