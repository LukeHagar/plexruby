# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_USERS_RESPONSE_SERVERS = [
      'https://plex.tv/api'
    ].freeze
  

    class GetUsersResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Bad Request - A parameter was not specified, or was specified incorrectly.
      field :bad_request, T.nilable(::PlexRubySDK::Operations::GetUsersBadRequest)

      field :body, T.nilable(::String)
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :unauthorized, T.nilable(::PlexRubySDK::Operations::GetUsersUnauthorized)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, bad_request: T.nilable(::PlexRubySDK::Operations::GetUsersBadRequest), body: T.nilable(::String), unauthorized: T.nilable(::PlexRubySDK::Operations::GetUsersUnauthorized)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, bad_request: nil, body: nil, unauthorized: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @bad_request = bad_request
        @body = body
        @unauthorized = unauthorized
      end
    end
  end
end
