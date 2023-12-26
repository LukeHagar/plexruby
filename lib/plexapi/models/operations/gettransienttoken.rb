# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    # QueryParamType - `delegation` - This is the only supported `type` parameter.
    class QueryParamType < T::Enum
      enums do
        DELEGATION = new('delegation')
      end
    end


    # Scope - `all` - This is the only supported `scope` parameter.
    class Scope < T::Enum
      enums do
        ALL = new('all')
      end
    end



    class GetTransientTokenRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # `all` - This is the only supported `scope` parameter.
      field :scope, Operations::Scope, { 'query_param': { 'field_name': 'scope', 'style': 'form', 'explode': true } }
      # `delegation` - This is the only supported `type` parameter.
      field :type, Operations::QueryParamType, { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }


      sig { params(scope: Operations::Scope, type: Operations::QueryParamType).void }
      def initialize(scope: nil, type: nil)
        @scope = scope
        @type = type
      end
    end


    class GetTransientTokenErrors < OpenApiSDK::Utils::FieldAugmented
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
    class GetTransientTokenResponseBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::GetTransientTokenErrors]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::GetTransientTokenErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class GetTransientTokenResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :object, T.nilable(Operations::GetTransientTokenResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, object: T.nilable(Operations::GetTransientTokenResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @object = object
      end
    end
  end
end
