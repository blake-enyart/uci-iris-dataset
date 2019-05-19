Rails.application.routes.draw do
  root 'welcome#index'

  get '/irises', to: 'irises#index', as: :irises

  # Requests
  namespace :api do
    namespace :v1 do
      resources :irises, only: [:index]
    end
  end

  post '/uci_services', to: 'data_queries/irises#create', as: :uci_irises_dataset
end
