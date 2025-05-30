# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
      LIBTYPE_SERVERS = [
        'https://metadata.provider.plex.tv'
      ].freeze
    
      # Libtype - The type of library to filter. Can be "movie" or "show", or all if not present.
      # 
      class Libtype < T::Enum
        enums do
          MOVIE = new('movie')
          SHOW = new('show')
        end
      end
    end
  end
end
