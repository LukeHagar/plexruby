# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    MEDIA_REVIEWS_VISIBILITY_SERVERS = [
      'https://plex.tv/api/v2/'
    ].freeze
  
    # MediaReviewsVisibility - Whether or not the account has media reviews visibility enabled
    class MediaReviewsVisibility < T::Enum
      enums do
        DISABLE = new(0)
        ENABLE = new(1)
      end
    end
  end
end
