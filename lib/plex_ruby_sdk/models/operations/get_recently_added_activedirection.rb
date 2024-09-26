# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # GetRecentlyAddedActiveDirection - The direction of the sort. Can be either `asc` or `desc`.
    # 
    class GetRecentlyAddedActiveDirection < T::Enum
      enums do
        ASCENDING = new('asc')
        DESCENDING = new('desc')
      end
    end
  end
end
