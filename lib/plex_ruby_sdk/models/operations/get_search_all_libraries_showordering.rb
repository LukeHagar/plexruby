# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    
      # GetSearchAllLibrariesShowOrdering - Setting that indicates the episode ordering for the show.
      # None = Library default,
      # tmdbAiring = The Movie Database (Aired),
      # aired = TheTVDB (Aired),
      # dvd = TheTVDB (DVD),
      # absolute = TheTVDB (Absolute)).
      # 
      class GetSearchAllLibrariesShowOrdering < T::Enum
        enums do
          NONE = new('None')
          TMDB_AIRING = new('tmdbAiring')
          TVDB_AIRED = new('aired')
          TVDB_DVD = new('dvd')
          TVDB_ABSOLUTE = new('absolute')
        end
      end
    end
  end
end
