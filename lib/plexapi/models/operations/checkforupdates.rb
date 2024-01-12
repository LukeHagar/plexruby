# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    # Download - Indicate that you want to start download any updates found.
    class Download < T::Enum
      enums do
        ZERO = new(0)
        ONE = new(1)
      end
    end



    class CheckForUpdatesRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Indicate that you want to start download any updates found.
      field :download, T.nilable(Operations::Download), { 'query_param': { 'field_name': 'download', 'style': 'form', 'explode': true } }


      sig { params(download: T.nilable(Operations::Download)).void }
      def initialize(download: nil)
        @download = download
      end
    end


    class CheckForUpdatesErrors < OpenApiSDK::Utils::FieldAugmented
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
    class CheckForUpdatesResponseBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::CheckForUpdatesErrors]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::CheckForUpdatesErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class CheckForUpdatesResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :object, T.nilable(Operations::CheckForUpdatesResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, object: T.nilable(Operations::CheckForUpdatesResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @object = object
      end
    end
  end
end
