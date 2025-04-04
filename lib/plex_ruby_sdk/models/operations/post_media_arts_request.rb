# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class PostMediaArtsRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # the id of the library item to return the posters of.
      field :rating_key, ::Integer, { 'path_param': { 'field_name': 'ratingKey', 'style': 'simple', 'explode': false } }
      # The contents of the image, if uploading a local file
      field :request_body, T.nilable(::String), { 'request': { 'media_type': 'image/*' } }
      # The URL of the image, if uploading a remote image
      field :url, T.nilable(::String), { 'query_param': { 'field_name': 'url', 'style': 'form', 'explode': true } }


      sig { params(rating_key: ::Integer, request_body: T.nilable(::String), url: T.nilable(::String)).void }
      def initialize(rating_key: nil, request_body: nil, url: nil)
        @rating_key = rating_key
        @request_body = request_body
        @url = url
      end
    end
  end
end
