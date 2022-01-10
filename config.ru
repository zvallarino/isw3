# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser
use MovieController
use ProfileController
use GenreController

# Our application
run ApplicationController

run Rails.application
Rails.application.load_server


