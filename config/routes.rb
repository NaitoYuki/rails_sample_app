Rails.application.routes.draw do
  root 'top#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }
end
