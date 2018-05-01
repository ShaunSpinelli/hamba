Rails.application.routes.draw do
  get 'home/index'
  #sget '/charges/new/:id', to: 'charges#new', as: 'new_charges_path'
  post '/jobs/makemove/:id', to: 'jobs#makemove', as: 'makemove_jobs'
  resources :jobs
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
