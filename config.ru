require './app/main'
require 'rack'
require 'rack/contrib'

use Rack::JSONP

run Sinatra::Application
