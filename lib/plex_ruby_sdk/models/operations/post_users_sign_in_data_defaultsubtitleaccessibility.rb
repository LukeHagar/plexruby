# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    POST_USERS_SIGN_IN_DATA_DEFAULT_SUBTITLE_ACCESSIBILITY_SERVERS = [
      'https://plex.tv/api/v2/'
    ].freeze
  
    # PostUsersSignInDataDefaultSubtitleAccessibility - The subtitles for the deaf or hard-of-hearing (SDH) searches mode (0 = Prefer non-SDH subtitles, 1 = Prefer SDH subtitles, 2 = Only show SDH subtitles, 3 = Only shown non-SDH subtitles)
    class PostUsersSignInDataDefaultSubtitleAccessibility < T::Enum
      enums do
        ZERO = new('0')
        ONE = new('1')
      end
    end
  end
end
