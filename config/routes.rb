Rails.application.routes.draw do

  get 'users/index'
  root to: 'users#index'
  devise_for :users,
             controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
