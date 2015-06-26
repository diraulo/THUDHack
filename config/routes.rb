Rails.application.routes.draw do
  # devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  # config/routes.rb
  get '/pages/*id' => 'pages#show', as: :page, format: false

  # if routing the root path, update for your controller
  root to: 'pages#show', id: 'landing'

  get '/profile/:id' => 'admins#user_profile', as: :profile
end
