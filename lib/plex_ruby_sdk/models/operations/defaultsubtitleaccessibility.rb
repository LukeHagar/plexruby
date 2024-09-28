# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    DEFAULT_SUBTITLE_ACCESSIBILITY_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  
    # DefaultSubtitleAccessibility - The subtitles for the deaf or hard-of-hearing (SDH) searches mode (0 = Prefer non-SDH subtitles, 1 = Prefer SDH subtitles, 2 = Only show SDH subtitles, 3 = Only show non-SDH subtitles)
    class DefaultSubtitleAccessibility < T::Enum
      enums do
        DISABLE = new(0)
        ENABLE = new(1)
      end
    end
  end
end
