Rails.application.routes.draw do

  resources :stages

  namespace :api do
    resources :stages
    resources :artists
  end


end
