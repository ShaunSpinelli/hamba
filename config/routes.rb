Rails.application.routes.draw do
  get 'home/index'
  post '/jobs/makemove/:id', to: 'jobs#makemove', as: 'makemove_jobs'
  post '/jobs/confirmmove/:id', to: 'jobs#confirmmove', as: 'confirmmove_jobs'  
  resources :jobs
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
