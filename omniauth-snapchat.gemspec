lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-snapchat/version'

Gem::Specification.new do |gem|
  gem.name ='omniauth-snapchat'
  gem.authors = %w(todd@genius.com)
  gem.version = OmniAuth::Snapchat::VERSION
  gem.summary = 'OmniAuth Strategy for Snapchat Snap Kit'

  gem.add_runtime_dependency 'omniauth', '~> 1.9'
  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.6'
end
