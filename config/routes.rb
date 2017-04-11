Rails.application.routes.draw do
  devise_for :users,
             controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'friends/index'
  get 'users/index'
  root to: 'users#index'
end