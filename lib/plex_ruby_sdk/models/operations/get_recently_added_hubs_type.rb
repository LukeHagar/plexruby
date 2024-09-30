# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # GetRecentlyAddedHubsType - The type of media content
    # 
    class GetRecentlyAddedHubsType < T::Enum
      enums do
        MOVIE = new('movie')
        TV_SHOW = new('show')
        SEASON = new('season')
        EPISODE = new('episode')
      end
    end
  end
end