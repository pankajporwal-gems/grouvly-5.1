# Load the Rails application.
require_relative 'application'

APP_CONFIG = YAML.load_file("#{Rails.root}/config/settings.yml")

# Initialize the Rails application.
Rails.application.initialize!
