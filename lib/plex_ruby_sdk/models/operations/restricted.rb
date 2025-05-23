# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
      RESTRICTED_SERVERS = [
        'https://plex.tv/api'
      ].freeze
    
      # Restricted - Indicates if the user has restricted access.
      class Restricted < T::Enum
        enums do
          DISABLE = new(0)
          ENABLE = new(1)
        end
      end
    end
  end
end
