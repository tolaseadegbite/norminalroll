Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
  end
  resources :staffs
end
