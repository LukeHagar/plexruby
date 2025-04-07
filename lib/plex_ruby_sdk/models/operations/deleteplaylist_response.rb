# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class DeletePlaylistResponse < ::Crystalline::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # Bad Request - A parameter was not specified, or was specified incorrectly.
      field :bad_request, T.nilable(::PlexRubySDK::Operations::DeletePlaylistBadRequest)
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :unauthorized, T.nilable(::PlexRubySDK::Operations::DeletePlaylistUnauthorized)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, bad_request: T.nilable(::PlexRubySDK::Operations::DeletePlaylistBadRequest), unauthorized: T.nilable(::PlexRubySDK::Operations::DeletePlaylistUnauthorized)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, bad_request: nil, unauthorized: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @bad_request = bad_request
        @unauthorized = unauthorized
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @content_type == other.content_type
        return false unless @raw_response == other.raw_response
        return false unless @status_code == other.status_code
        return false unless @bad_request == other.bad_request
        return false unless @unauthorized == other.unauthorized
        true
      end
    end
  end
end
