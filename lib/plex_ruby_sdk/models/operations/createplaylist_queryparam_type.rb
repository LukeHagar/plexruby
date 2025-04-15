# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    
      # CreatePlaylistQueryParamType - type of playlist to create
      class CreatePlaylistQueryParamType < T::Enum
        enums do
          AUDIO = new('audio')
          VIDEO = new('video')
          PHOTO = new('photo')
        end
      end
    end
  end
end
