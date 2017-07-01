Rails.application.routes.draw do
  resources :details
  resources :items
  resources :formulas
  resources :products
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'admin/dashboard#index'

end
