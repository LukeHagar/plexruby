# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    # Tonight - Indicate that you want the update to run during the next Butler execution. Omitting this or setting it to false indicates that the update should install
    class Tonight < T::Enum
      enums do
        ZERO = new(0)
        ONE = new(1)
      end
    end


    # Skip - Indicate that the latest version should be marked as skipped. The <Release> entry for this version will have the `state` set to `skipped`.
    class Skip < T::Enum
      enums do
        ZERO = new(0)
        ONE = new(1)
      end
    end



    class ApplyUpdatesRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Indicate that the latest version should be marked as skipped. The <Release> entry for this version will have the `state` set to `skipped`.
      field :skip, T.nilable(Operations::Skip), { 'query_param': { 'field_name': 'skip', 'style': 'form', 'explode': true } }
      # Indicate that you want the update to run during the next Butler execution. Omitting this or setting it to false indicates that the update should install
      field :tonight, T.nilable(Operations::Tonight), { 'query_param': { 'field_name': 'tonight', 'style': 'form', 'explode': true } }


      sig { params(skip: T.nilable(Operations::Skip), tonight: T.nilable(Operations::Tonight)).void }
      def initialize(skip: nil, tonight: nil)
        @skip = skip
        @tonight = tonight
      end
    end


    class ApplyUpdatesErrors < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :code, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('code') } }

      field :message, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('message') } }

      field :status, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('status') } }


      sig { params(code: T.nilable(Float), message: T.nilable(String), status: T.nilable(Float)).void }
      def initialize(code: nil, message: nil, status: nil)
        @code = code
        @message = message
        @status = status
      end
    end

    # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    class ApplyUpdatesResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::ApplyUpdatesErrors]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::ApplyUpdatesErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class ApplyUpdatesResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :object, T.nilable(Operations::ApplyUpdatesResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, object: T.nilable(Operations::ApplyUpdatesResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @object = object
      end
    end
  end
end
