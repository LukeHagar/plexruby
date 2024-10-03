# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # GetSearchAllLibrariesType - The type of media content
    # 
    class GetSearchAllLibrariesType < T::Enum
      enums do
        MOVIE = new('movie')
        TV_SHOW = new('show')
        SEASON = new('season')
        EPISODE = new('episode')
      end
    end
  end
end
