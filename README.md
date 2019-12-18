# omniauth-snapchat

An OmniAuth strategy for authenticating with Snapchat [Snap Kit](https://kit.snapchat.com/).

## Installation

In your Gemfile:

``` ruby
gem 'omniauth-snapchat'
```

## Usage

Here's an example on setting up `omniauth-snapchat` (NOTE: this should be placed
in something like `config/initializers/omniauth.rb`:

``` ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :snapchat, ENV['SNAPCHAT_CLIENT_ID'], ENV['SNAPCHAT_CLIENT_SECRET']
end
```

## Helpful Links

* [Snap Kit](https://kit.snapchat.com/)
* [Documentation](https://kit.snapchat.com/docs/)
