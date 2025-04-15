# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetLibraryHubsResponse
        extend T::Sig
        include Crystalline::MetadataFields

        # HTTP response content type for this operation
        field :content_type, ::String
        # Raw HTTP response; suitable for custom response parsing
        field :raw_response, ::Faraday::Response
        # HTTP response status code for this operation
        field :status_code, ::Integer
        # The hubs specific to the library
        field :object, T.nilable(Models::Operations::GetLibraryHubsResponseBody)


        sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, object: T.nilable(Models::Operations::GetLibraryHubsResponseBody)).void }
        def initialize(content_type: nil, raw_response: nil, status_code: nil, object: nil)
          @content_type = content_type
          @raw_response = raw_response
          @status_code = status_code
          @object = object
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @content_type == other.content_type
          return false unless @raw_response == other.raw_response
          return false unless @status_code == other.status_code
          return false unless @object == other.object
          true
        end
      end
    end
  end
end
