# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    
      # PlaylistType - limit to a type of playlist.
      class PlaylistType < T::Enum
        enums do
          AUDIO = new('audio')
          VIDEO = new('video')
          PHOTO = new('photo')
        end
      end
    end
  end
end
