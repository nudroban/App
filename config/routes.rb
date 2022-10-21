Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :doctors
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'home_pages#index'
end
