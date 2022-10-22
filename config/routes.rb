Rails.application.routes.draw do
  draw :madmin
  devise_for :users
  root "staffs#index"
  devise_scope :user do
    get 'users', to: 'devise/sessions#new'
  end
  resources :staffs
  resources :qualifications, only: :create

  get '/doctor', to: 'staffs#doctor'
  get '/mr', to: 'staffs#mr'
  get '/mrs', to: 'staffs#mrs'
  get '/chief_lecturer_with_phd', to: 'staffs#clwphd'
  get '/chief_lecturer_with_msc', to: 'staffs#clwmsc'
  get '/senior_lecturer_with_phd', to: 'staffs#slwphd'
  get '/senior_lecturer_with_msc', to: 'staffs#slwmsc'
  get '/pending_staffs', to: 'staffs#pending'
  get '/active_staffs', to: 'staffs#active'
  get '/retired_staffs', to: 'staffs#retired'
  get '/male_staffs', to: 'staffs#male'
  get '/female_staffs', to: 'staffs#female'

end
