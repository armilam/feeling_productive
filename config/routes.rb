Rails.application.routes.draw do
  resources :tasks
  use_doorkeeper
  get "/" => "home#index"

  post "/google_assistant" => "google_assistant#conversation"
end
