# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class StartUniversalTranscodeRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Whether the media item has MDE
      field :has_mde, Float, { 'query_param': { 'field_name': 'hasMDE', 'style': 'form', 'explode': true } }
      # The index of the media item to transcode
      field :media_index, Float, { 'query_param': { 'field_name': 'mediaIndex', 'style': 'form', 'explode': true } }
      # The index of the part to transcode
      field :part_index, Float, { 'query_param': { 'field_name': 'partIndex', 'style': 'form', 'explode': true } }
      # The path to the media item to transcode
      field :path, String, { 'query_param': { 'field_name': 'path', 'style': 'form', 'explode': true } }
      # The protocol to use for the transcode session
      field :protocol, String, { 'query_param': { 'field_name': 'protocol', 'style': 'form', 'explode': true } }
      # Whether to add a debug overlay or not
      field :add_debug_overlay, T.nilable(Float), { 'query_param': { 'field_name': 'addDebugOverlay', 'style': 'form', 'explode': true } }
      # The audio boost
      field :audio_boost, T.nilable(Float), { 'query_param': { 'field_name': 'audioBoost', 'style': 'form', 'explode': true } }
      # Whether to auto adjust quality or not
      field :auto_adjust_quality, T.nilable(Float), { 'query_param': { 'field_name': 'autoAdjustQuality', 'style': 'form', 'explode': true } }
      # Whether to use direct play or not
      field :direct_play, T.nilable(Float), { 'query_param': { 'field_name': 'directPlay', 'style': 'form', 'explode': true } }
      # Whether to use direct stream or not
      field :direct_stream, T.nilable(Float), { 'query_param': { 'field_name': 'directStream', 'style': 'form', 'explode': true } }
      # Whether to use fast seek or not
      field :fast_seek, T.nilable(Float), { 'query_param': { 'field_name': 'fastSeek', 'style': 'form', 'explode': true } }
      # The location of the transcode session
      field :location, T.nilable(String), { 'query_param': { 'field_name': 'location', 'style': 'form', 'explode': true } }
      # The size of the media buffer
      field :media_buffer_size, T.nilable(Float), { 'query_param': { 'field_name': 'mediaBufferSize', 'style': 'form', 'explode': true } }
      # The session ID
      field :session, T.nilable(String), { 'query_param': { 'field_name': 'session', 'style': 'form', 'explode': true } }
      # The subtitles
      field :subtites, T.nilable(String), { 'query_param': { 'field_name': 'subtites', 'style': 'form', 'explode': true } }
      # The size of the subtitles
      field :subtitle_size, T.nilable(Float), { 'query_param': { 'field_name': 'subtitleSize', 'style': 'form', 'explode': true } }


      sig { params(has_mde: Float, media_index: Float, part_index: Float, path: String, protocol: String, add_debug_overlay: T.nilable(Float), audio_boost: T.nilable(Float), auto_adjust_quality: T.nilable(Float), direct_play: T.nilable(Float), direct_stream: T.nilable(Float), fast_seek: T.nilable(Float), location: T.nilable(String), media_buffer_size: T.nilable(Float), session: T.nilable(String), subtites: T.nilable(String), subtitle_size: T.nilable(Float)).void }
      def initialize(has_mde: nil, media_index: nil, part_index: nil, path: nil, protocol: nil, add_debug_overlay: nil, audio_boost: nil, auto_adjust_quality: nil, direct_play: nil, direct_stream: nil, fast_seek: nil, location: nil, media_buffer_size: nil, session: nil, subtites: nil, subtitle_size: nil)
        @has_mde = has_mde
        @media_index = media_index
        @part_index = part_index
        @path = path
        @protocol = protocol
        @add_debug_overlay = add_debug_overlay
        @audio_boost = audio_boost
        @auto_adjust_quality = auto_adjust_quality
        @direct_play = direct_play
        @direct_stream = direct_stream
        @fast_seek = fast_seek
        @location = location
        @media_buffer_size = media_buffer_size
        @session = session
        @subtites = subtites
        @subtitle_size = subtitle_size
      end
    end


    class StartUniversalTranscodeErrors < OpenApiSDK::Utils::FieldAugmented
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
    class StartUniversalTranscodeResponseBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::StartUniversalTranscodeErrors]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::StartUniversalTranscodeErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class StartUniversalTranscodeResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :object, T.nilable(Operations::StartUniversalTranscodeResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, object: T.nilable(Operations::StartUniversalTranscodeResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @object = object
      end
    end
  end
end