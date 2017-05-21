Rails.application.routes.draw do
  post "/google_assistant" => "google_assistant#conversation"
end
