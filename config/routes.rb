require 'sidekiq/web'

Rails.application.routes.draw do
  root 'home#index'

  ####################################
  # CONF
  ####################################
  devise_for :users
  
  ####################################
  # ADMIN
  ####################################
  namespace :admin do
    root 'home#index'
    resources :users
    resources :contacts
    authenticate :user, -> (user) { user.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end
  end

  ####################################
  # SITE
  ####################################
  
end

