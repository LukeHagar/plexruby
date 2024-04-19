# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # QueryParamOnlyTransient - Only return hubs which are "transient", meaning those which are prone to changing after media playback or addition (e.g. On Deck, or Recently Added).
    class QueryParamOnlyTransient < T::Enum
      enums do
        ZERO = new(0)
        ONE = new(1)
      end
    end

  end
end