require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Snapchat < OmniAuth::Strategies::OAuth2
      option :name, 'snapchat'

      option :scope, %w(story-studio user.display_name).map { |s| "https://auth.snapchat.com/oauth2/api/#{s}" }.join(' ')

      option :client_options, {
        site: 'https://accounts.snapchat.com',
        authorize_url: '/accounts/oauth2/auth',
        token_url: '/login/oauth2/access_token'
      }

      uid { raw_info['externalId'] }

      info do
        {
          id: raw_info['externalId'],
          name: raw_info['displayName']
        }
      end

      extra { {raw_info: raw_info} }

      def callback_url
        full_host + script_name + callback_path
      end

      def raw_info
        @raw_info ||= begin
          url = 'https://kit.snapchat.com/v1/me'
          body = {query: "{ me { externalId, displayName } }"}

          access_token.post(url, body: body.to_json).parsed.dig('data', 'me')
        end
      end
    end
  end
end
