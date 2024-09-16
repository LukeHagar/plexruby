# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # State - The state of the media item
    class State < T::Enum
      enums do
        PLAYING = new('playing')
        PAUSED = new('paused')
        STOPPED = new('stopped')
      end
    end
  end
end