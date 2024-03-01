# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # MinSize - images are always scaled proportionally. A value of '1' in minSize will make the smaller native dimension the dimension resized against.
    class MinSize < T::Enum
      enums do
        ZERO = new(0)
        ONE = new(1)
      end
    end

  end
end
