Rails.application.routes.draw do
  get "/" => "home#index"

  post "/google_assistant" => "google_assistant#conversation"
end
