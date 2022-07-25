Rails.application.routes.draw do
  root 'welcome#index'
  resource :sessions
  resources :connections, only:[:index, :show, :update]
  resources :requests, only:[:index, :show, :update, :create]
  resources :users
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
