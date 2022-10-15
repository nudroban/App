Rails.application.routes.draw do
  devise_for :user, controllers: {
    registrations: 'patients/registrations'
  }
  root 'home_pages#index'
end
