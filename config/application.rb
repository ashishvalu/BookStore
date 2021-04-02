require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Bookshop
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.active_storage.variant_processor = :vips
    config.assets.initialize_on_precompile = false

     # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.active_job.queue_adapter = :sidekiq
    # config.active_job.queue_adapter = :resque
    # config.active_job.queue_adapter = :delayed_job
    I18n.available_locales = [:en, :gu]
    # Set default locale to something other than :en
    # I18n.default_locale = :en
  end
end
