Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope module: :public do
    root 'top#index'
    devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  end
end
