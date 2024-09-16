# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # OnlyTransient - Only return hubs which are "transient", meaning those which are prone to changing after media playback or addition (e.g. On Deck, or Recently Added).
    class OnlyTransient < T::Enum
      enums do
        ZERO = new(0)
        ONE = new(1)
      end
    end
  end
end