require './app/main'
require 'rack'
require 'rack/contrib'

use Rack::JSONP
set :protection, :except => [:frame_options, :json_csrf]

run Sinatra::Application
