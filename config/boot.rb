require 'bundler'

PADRINO_ENV  ||= ENV["PADRINO_ENV"] ||= ENV["RACK_ENV"] ||= "development"
PADRINO_ROOT ||= File.expand_path File.join File.dirname(__FILE__), ".."

Bundler.setup   :default, PADRINO_ENV.to_sym
Bundler.require :default, PADRINO_ENV.to_sym

# puts "=> Located #{Padrino.bundle} Gemfile for #{Padrino.env}"

Padrino.before_load do
  Slim::Engine.set_default_options pretty: true
end

Padrino.after_load do
end

Padrino.load!
