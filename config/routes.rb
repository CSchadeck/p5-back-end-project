Rails.application.routes.draw do
  # resource :sessions
  resources :connections, only:[:index, :show, :update, :create]
  resources :requests, only:[:index, :show, :update, :destroy, :create]
  resources :users, only:[:index, :showWithOutLogIn, :update, :create, :destroy]
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  get "/users/:id", to: "users#showWithOutLogIn"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # get '/current_user' => 'users#current_user'

  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
