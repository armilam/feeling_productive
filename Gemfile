source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.1"
gem "pg"
gem "puma", "~> 3.7"

gem "turbolinks", "~> 5.0.0"
gem "webpacker"
gem "uglifier"

# Authentication
gem "clearance", "~> 1.16"
gem "doorkeeper", "~> 4.2"

gem "google_assistant", github: "armilam/google-assistant-ruby", branch: "assistant-api-v2"

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "pry-rails"
end
