require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

CONFIG = YAML.load(ERB.new(File.read(File.expand_path('../application.yml', __FILE__))).result(binding))
CONFIG.merge! CONFIG.fetch(Rails.env, {})
CONFIG.deep_symbolize_keys!

module Stepnote
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Use memory store for assets cache in development/test to avoid caching
		# to tmp/assets, because it causes hiding of deprecation messages in
		# stylesheets, sometimes break parallel_tests and doesn't always refresh
		# gem stylesheets in development
		config.assets.configure do |env|
		  if Rails.env.development? || Rails.env.test?
		    env.cache = ActiveSupport::Cache.lookup_store(:memory_store)
		  end
		end
  end
end
