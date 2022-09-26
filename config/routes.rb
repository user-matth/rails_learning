require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users
  authenticate :user, -> (user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
