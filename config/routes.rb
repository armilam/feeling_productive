Rails.application.routes.draw do
  use_doorkeeper
  get "/" => "home#index"

  post "/google_assistant" => "google_assistant#conversation"
end
