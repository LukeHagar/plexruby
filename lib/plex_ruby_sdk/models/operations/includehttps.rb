# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
      INCLUDE_HTTPS_SERVERS = [
        'https://plex.tv/api/v2'
      ].freeze
    
      # IncludeHttps - Include Https entries in the results
      class IncludeHttps < T::Enum
        enums do
          DISABLE = new(0)
          ENABLE = new(1)
        end
      end
    end
  end
end
