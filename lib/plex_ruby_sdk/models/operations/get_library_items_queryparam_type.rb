# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # GetLibraryItemsQueryParamType - The type of media to retrieve.
    # 1 = movie
    # 2 = show
    # 3 = season
    # 4 = episode
    # E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries
    # 
    class GetLibraryItemsQueryParamType < T::Enum
      enums do
        MOVIE = new(1)
        TV_SHOW = new(2)
        SEASON = new(3)
        EPISODE = new(4)
      end
    end
  end
end
