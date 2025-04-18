# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
      POST_USERS_SIGN_IN_DATA_STATUS_SERVERS = [
        'https://plex.tv/api/v2'
      ].freeze
    

      class PostUsersSignInDataStatus < T::Enum
        enums do
          ONLINE = new('online')
          OFFLINE = new('offline')
        end
      end
    end
  end
end
