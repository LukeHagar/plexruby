# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    
      # GetRecentlyAddedDefaultDirection - The direction of the sort. Can be either `asc` or `desc`.
      # 
      class GetRecentlyAddedDefaultDirection < T::Enum
        enums do
          ASCENDING = new('asc')
          DESCENDING = new('desc')
        end
      end
    end
  end
end
