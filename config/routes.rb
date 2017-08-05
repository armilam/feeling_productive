Rails.application.routes.draw do
  use_doorkeeper

  resource :google_session, controller: "google_sessions", only: [:create]

  get "/" => "home#index", as: :root

  resources :tasks

  post "/google_assistant" => "google_assistant#conversation"
end
