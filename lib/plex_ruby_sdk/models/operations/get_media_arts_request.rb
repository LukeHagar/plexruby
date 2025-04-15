# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetMediaArtsRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # the id of the library item to return the artwork of.
        field :rating_key, ::Integer, { 'path_param': { 'field_name': 'ratingKey', 'style': 'simple', 'explode': false } }


        sig { params(rating_key: ::Integer).void }
        def initialize(rating_key: nil)
          @rating_key = rating_key
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @rating_key == other.rating_key
          true
        end
      end
    end
  end
end
