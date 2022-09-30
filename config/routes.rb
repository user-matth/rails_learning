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
  authenticate :user, -> (user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  namespace :admin do
    root 'home#index'
    resources :users
    resources :pages
    resources :services
    resources :teams
    resources :confs
    resources :contacts
    resources :banners
    resources :infos
    resources :testimonials
  end

  ####################################
  # SITE
  ####################################
  
end

