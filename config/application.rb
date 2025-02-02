require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PRISM
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.i18n.available_locales = [:ko, :en]
    config.i18n.default_locale = :ko

    config.autoload_paths << Rails.root.join('lib')

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.time_zone = "Asia/Seoul"

    config.middleware.insert_before 0, Rack::Cors do 
      allow do
        origins '*'
        resource(
          '*', 
          headers: :any, 
          methods: [:get, :post, :patch, :put, :delete, :options]
        )
      end
    end
  end
end
