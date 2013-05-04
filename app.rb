require 'bundler/setup'
require 'sinatra/base'
require 'json'

# Model Classes
require_relative 'models/user.rb'                     # User model
# Controller Routes
require_relative 'controllers/users_controller.rb'    # User controller

class Application < Sinatra::Base
  puts "=> Running in #{settings.environment} environment"

  enable :sessions

  run!
end
