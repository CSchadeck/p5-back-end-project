# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server

# ....

require 'rack/cors'
use Rack::Cors do

 # allow all origins in development
 allow do
   origins 'http://localhost:3000'
   resource '*',
       :headers => :any,
       :methods => [:get, :post, :delete, :put, :options]
 end
 allow do
    origins 'http://localhost:3001'
    resource '*',
        :headers => :any,
        :methods => [:get, :post, :delete, :put, :options]
  end

 allow do
    origins 'https://obscure-headland-31666.herokuapp.com'
    resource '*',
        :headers => :any,
        :methods => [:get, :post, :delete, :put, :options]
  end

end