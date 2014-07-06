require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Lainonrails4
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    config.generators do |g|
      g.template_engine :haml
      g.test_framework :rspec,
      fixtures: true,
      view_specs: false,
      helper_specs: false,
      routing_specs: false,
      controller_specs: true,
      request_specs: false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
      g.scaffold_controller "scaffold_controller"
    end

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
    config.autoload_paths << "#{config.root}/lib/validators"
    config.autoload_paths << "#{config.root}/lib/modules"
    config.assets.enabled = true
    config.assets.precompile += %w(ckeditor/*)

    config.i18n.default_locale = :pe
    config.i18n.available_locales = [:pe, :cr, :uy, :bo, :sv, :gt]
    config.i18n.fallbacks = true
  end
end
