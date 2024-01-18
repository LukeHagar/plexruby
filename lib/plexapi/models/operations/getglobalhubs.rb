# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    # OnlyTransient - Only return hubs which are "transient", meaning those which are prone to changing after media playback or addition (e.g. On Deck, or Recently Added).
    class OnlyTransient < T::Enum
      enums do
        ZERO = new(0)
        ONE = new(1)
      end
    end



    class GetGlobalHubsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The number of items to return with each hub.
      field :count, T.nilable(Float), { 'query_param': { 'field_name': 'count', 'style': 'form', 'explode': true } }
      # Only return hubs which are "transient", meaning those which are prone to changing after media playback or addition (e.g. On Deck, or Recently Added).
      field :only_transient, T.nilable(Operations::OnlyTransient), { 'query_param': { 'field_name': 'onlyTransient', 'style': 'form', 'explode': true } }


      sig { params(count: T.nilable(Float), only_transient: T.nilable(Operations::OnlyTransient)).void }
      def initialize(count: nil, only_transient: nil)
        @count = count
        @only_transient = only_transient
      end
    end


    class GetGlobalHubsErrors < ::OpenApiSDK::Utils::FieldAugmented
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
    class GetGlobalHubsResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::GetGlobalHubsErrors]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::GetGlobalHubsErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class GetGlobalHubsResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :object, T.nilable(Operations::GetGlobalHubsResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, object: T.nilable(Operations::GetGlobalHubsResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @object = object
      end
    end
  end
end
