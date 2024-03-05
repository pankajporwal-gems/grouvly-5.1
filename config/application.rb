require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GrouvlyV2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.assets.enabled = true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.eager_load_paths += %W(#{config.root}/app/serializers)
    config.eager_load_paths += %W(#{config.root}/app/services)
    config.eager_load_paths += %W(#{config.root}/app/presenters)
    config.eager_load_paths += %W(#{config.root}/app/decorators)
    config.eager_load_paths += %W(#{config.root}/app/validators)
    config.eager_load_paths += %W(#{config.root}/app/workers)
    config.eager_load_paths += %W(#{config.root}/app/mailers)
    config.eager_load_paths += %W(#{config.root}/lib)
    config.assets.version = '1.0' 
  end
end
