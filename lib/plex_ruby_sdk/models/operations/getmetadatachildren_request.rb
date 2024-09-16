# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetMetadataChildrenRequest < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

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
    end
  end
end