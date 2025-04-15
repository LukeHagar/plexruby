# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
      GET_TOKEN_DETAILS_AUTHENTICATION_RESPONSE_STATUS_SERVERS = [
        'https://plex.tv/api/v2'
      ].freeze
    
      # GetTokenDetailsAuthenticationResponseStatus - String representation of subscriptionActive
      class GetTokenDetailsAuthenticationResponseStatus < T::Enum
        enums do
          INACTIVE = new('Inactive')
          ACTIVE = new('Active')
        end
      end
    end
  end
end
