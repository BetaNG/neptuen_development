require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Neptune
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Beijing'

    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = 'zh-CN'

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    #config.assets.paths << File.join(Rails.root, 'app', 'assets', 'fonts')
    # use grape to great api
    config.paths.add "app/api", :glob => "**/*.rb"
    config.autoload_paths += Dir["#{Rails.root}/app/api/*"]
    
    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    # Enable escaping HTML in JSON.
    config.active_support.escape_html_entities_in_json = true
    
    #devise layout setting
    config.to_prepare do
      Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "application" : "devise" }        
      Devise::PasswordsController.layout proc{ |controller| user_signed_in? ? "application" : "devise" }       
    end

    # Enable the asset pipeline
    config.assets.enabled = true

    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'
  end
end
