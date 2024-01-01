# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    # Force - force overwriting of duplicate playlists. By default, a playlist file uploaded with the same path will overwrite the existing playlist. 
    # The `force` argument is used to disable overwriting. If the `force` argument is set to 0, a new playlist will be created suffixed with the date and time that the duplicate was uploaded.
    # 
    class Force < T::Enum
      enums do
        ZERO = new(0)
        ONE = new(1)
      end
    end



    class UploadPlaylistRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # force overwriting of duplicate playlists. By default, a playlist file uploaded with the same path will overwrite the existing playlist. 
      # The `force` argument is used to disable overwriting. If the `force` argument is set to 0, a new playlist will be created suffixed with the date and time that the duplicate was uploaded.
      # 
      field :force, Operations::Force, { 'query_param': { 'field_name': 'force', 'style': 'form', 'explode': true } }
      # absolute path to a directory on the server where m3u files are stored, or the absolute path to a playlist file on the server. 
      # If the `path` argument is a directory, that path will be scanned for playlist files to be processed. 
      # Each file in that directory creates a separate playlist, with a name based on the filename of the file that created it. 
      # The GUID of each playlist is based on the filename. 
      # If the `path` argument is a file, that file will be used to create a new playlist, with the name based on the filename of the file that created it. 
      # The GUID of each playlist is based on the filename.
      # 
      field :path, String, { 'query_param': { 'field_name': 'path', 'style': 'form', 'explode': true } }


      sig { params(force: Operations::Force, path: String).void }
      def initialize(force: nil, path: nil)
        @force = force
        @path = path
      end
    end


    class UploadPlaylistErrors < OpenApiSDK::Utils::FieldAugmented
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
    class UploadPlaylistResponseBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::UploadPlaylistErrors]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::UploadPlaylistErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class UploadPlaylistResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :object, T.nilable(Operations::UploadPlaylistResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, object: T.nilable(Operations::UploadPlaylistResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @object = object
      end
    end
  end
end