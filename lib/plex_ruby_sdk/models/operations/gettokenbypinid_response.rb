# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_TOKEN_BY_PIN_ID_RESPONSE_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  

    class GetTokenByPinIdResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The Pin with a non-null authToken when it has been verified by the user
      field :auth_pin_container, T.nilable(::PlexRubySDK::Operations::GetTokenByPinIdAuthPinContainer)
      # Bad Request - A parameter was not specified, or was specified incorrectly.
      field :bad_request, T.nilable(::PlexRubySDK::Operations::GetTokenByPinIdBadRequest)
      # Not Found or Expired
      field :object, T.nilable(::PlexRubySDK::Operations::GetTokenByPinIdResponseBody)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, auth_pin_container: T.nilable(::PlexRubySDK::Operations::GetTokenByPinIdAuthPinContainer), bad_request: T.nilable(::PlexRubySDK::Operations::GetTokenByPinIdBadRequest), object: T.nilable(::PlexRubySDK::Operations::GetTokenByPinIdResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, auth_pin_container: nil, bad_request: nil, object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @auth_pin_container = auth_pin_container
        @bad_request = bad_request
        @object = object
      end
    end
  end
end
