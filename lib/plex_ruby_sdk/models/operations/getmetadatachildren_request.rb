# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetMetadataChildrenRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # the id of the library item to return the children of.
        field :rating_key, ::Float, { 'path_param': { 'field_name': 'ratingKey', 'style': 'simple', 'explode': false } }
        # Adds additional elements to the response. Supported types are (Stream)
        # 
        field :include_elements, T.nilable(::String), { 'query_param': { 'field_name': 'includeElements', 'style': 'form', 'explode': true } }


        sig { params(rating_key: ::Float, include_elements: T.nilable(::String)).void }
        def initialize(rating_key: nil, include_elements: nil)
          @rating_key = rating_key
          @include_elements = include_elements
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @rating_key == other.rating_key
          return false unless @include_elements == other.include_elements
          true
        end
      end
    end
  end
end
