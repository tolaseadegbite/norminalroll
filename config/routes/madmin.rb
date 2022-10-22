# Below are the routes for madmin
namespace :madmin do
  resources :qualificationables
  resources :staffs
  resources :users
  resources :qualification_dates
  resources :qualifications
  root to: "dashboard#show"
end
