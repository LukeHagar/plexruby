# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class GetCommonLibraryItemsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # the Id of the library to query
      field :section_id, Float, { 'path_param': { 'field_name': 'sectionId', 'style': 'simple', 'explode': false } }
      # item type
      field :type, Float, { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }
      # the filter parameter
      field :filter, T.nilable(String), { 'query_param': { 'field_name': 'filter', 'style': 'form', 'explode': true } }


      sig { params(section_id: Float, type: Float, filter: T.nilable(String)).void }
      def initialize(section_id: nil, type: nil, filter: nil)
        @section_id = section_id
        @type = type
        @filter = filter
      end
    end


    class GetCommonLibraryItemsErrors < ::OpenApiSDK::Utils::FieldAugmented
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
    class GetCommonLibraryItemsResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::GetCommonLibraryItemsErrors]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::GetCommonLibraryItemsErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class GetCommonLibraryItemsResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :object, T.nilable(Operations::GetCommonLibraryItemsResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, object: T.nilable(Operations::GetCommonLibraryItemsResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @object = object
      end
    end
  end
end
