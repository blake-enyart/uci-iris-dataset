Rails.application.routes.draw do
  root 'welcome#index'

  get '/irises', to: 'irises#index', as: :irises

  # Requests
  namespace :api do
    namespace :v1 do
      resources :irises, only: [:index]
    end
  end

  get '/uci_services', to: 'data_queries/irises#index', as: :uci_irises_dataset
end
