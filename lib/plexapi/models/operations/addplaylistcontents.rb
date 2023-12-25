# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class AddPlaylistContentsRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # the ID of the playlist
      field :playlist_id, Float, { 'path_param': { 'field_name': 'playlistID', 'style': 'simple', 'explode': false } }
      # the play queue to add to a playlist
      field :play_queue_id, Float, { 'query_param': { 'field_name': 'playQueueID', 'style': 'form', 'explode': true } }
      # the content URI for the playlist
      field :uri, String, { 'query_param': { 'field_name': 'uri', 'style': 'form', 'explode': true } }


      sig { params(playlist_id: Float, play_queue_id: Float, uri: String).void }
      def initialize(playlist_id: nil, play_queue_id: nil, uri: nil)
        @playlist_id = playlist_id
        @play_queue_id = play_queue_id
        @uri = uri
      end
    end


    class AddPlaylistContentsErrors < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :code, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('code') } }

      field :message, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('message') } }

      field :status, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('status') } }


      sig { params(code: T.nilable(Float), message: T.nilable(String), status: T.nilable(Float)).void }
      def initialize(code: nil, message: nil, status: nil)
        @code = code
        @message = message
        @status = status
      end
    end

    # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    class AddPlaylistContentsResponseBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::AddPlaylistContentsErrors]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::AddPlaylistContentsErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class AddPlaylistContentsResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :object, T.nilable(Operations::AddPlaylistContentsResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, object: T.nilable(Operations::AddPlaylistContentsResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @object = object
      end
    end
  end
end
