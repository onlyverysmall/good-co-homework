ScoredNetworkJob::Application.routes.draw do
  root to: 'root#index'

  resources :users, only: :index
  resources :jobs, only: :index
end