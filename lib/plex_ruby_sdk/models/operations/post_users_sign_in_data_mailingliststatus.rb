# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
      POST_USERS_SIGN_IN_DATA_MAILING_LIST_STATUS_SERVERS = [
        'https://plex.tv/api/v2'
      ].freeze
    
      # PostUsersSignInDataMailingListStatus - Your current mailing list status (active or unsubscribed)
      class PostUsersSignInDataMailingListStatus < T::Enum
        enums do
          ACTIVE = new('active')
          UNSUBSCRIBED = new('unsubscribed')
        end
      end
    end
  end
end
