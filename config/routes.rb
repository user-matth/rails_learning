require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users

  # PUBLIC
  root 'home#index'
  
  # ADMIN
  authenticate :user, -> (user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
end

  