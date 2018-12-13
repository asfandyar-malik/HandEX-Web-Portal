require_relative 'boot'

require 'rails/all'
require 'csv'


# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Handex

  # MYDATA = CSV.parse("#{Rails.root}/db/data/test.csv").to_h

  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.action_dispatch.default_headers = {
        'Access-Control-Allow-Origin' => '*',
        'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",") # or whatever else you would like to allow
    }
    
  end
end