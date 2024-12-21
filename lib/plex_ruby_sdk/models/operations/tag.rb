# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # Tag - A key representing a specific tag within the section.
    class Tag < T::Enum
      enums do
        ALL = new('all')
        UNWATCHED = new('unwatched')
        NEWEST = new('newest')
        RECENTLY_ADDED = new('recentlyAdded')
        RECENTLY_VIEWED = new('recentlyViewed')
        ON_DECK = new('onDeck')
        COLLECTION = new('collection')
        EDITION = new('edition')
        GENRE = new('genre')
        YEAR = new('year')
        DECADE = new('decade')
        DIRECTOR = new('director')
        ACTOR = new('actor')
        COUNTRY = new('country')
        CONTENT_RATING = new('contentRating')
        RATING = new('rating')
        RESOLUTION = new('resolution')
        FIRST_CHARACTER = new('firstCharacter')
        FOLDER = new('folder')
        ALBUMS = new('albums')
      end
    end
  end
end
