Rails.application.routes.draw do
resources :jobs
devise_for :users
resources :users, only: [:show]

root to: 'home#index'

match 'jobs/:id/edit', to: 'jobs#edit', via: [:patch]

end
