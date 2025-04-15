# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    
      # EpisodeSort - Setting that indicates how episodes are sorted for the show. (-1 = Library default, 0 = Oldest first, 1 = Newest first).
      class EpisodeSort < T::Enum
        enums do
          LIBRARY_DEFAULT = new('-1')
          OLDEST_FIRST = new('0')
          NEWEST_FIRST = new('1')
        end
      end
    end
  end
end
