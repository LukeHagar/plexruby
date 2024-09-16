# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    INCLUDE_HTTPS_SERVERS = [
      'https://plex.tv/api/v2/'
    ].freeze
  
    # IncludeHttps - Include Https entries in the results
    class IncludeHttps < T::Enum
      enums do
        ZERO = new(0)
        ONE = new(1)
      end
    end
  end
end
