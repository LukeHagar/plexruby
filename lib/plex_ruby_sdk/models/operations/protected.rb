# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    PROTECTED_SERVERS = [
      'https://plex.tv/api'
    ].freeze
  
    # Protected - Indicates whether the account is protected.
    class Protected < T::Enum
      enums do
        DISABLE = new(0)
        ENABLE = new(1)
      end
    end
  end
end
