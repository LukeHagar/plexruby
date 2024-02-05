# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetUpdateStatusResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer
      # The Server Updates
      field :two_hundred_application_json_object, T.nilable(::OpenApiSDK::Operations::GetUpdateStatusResponseBody)
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :four_hundred_and_one_application_json_object, T.nilable(::OpenApiSDK::Operations::GetUpdateStatusUpdaterResponseBody)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, two_hundred_application_json_object: T.nilable(::OpenApiSDK::Operations::GetUpdateStatusResponseBody), four_hundred_and_one_application_json_object: T.nilable(::OpenApiSDK::Operations::GetUpdateStatusUpdaterResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, two_hundred_application_json_object: nil, four_hundred_and_one_application_json_object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @two_hundred_application_json_object = two_hundred_application_json_object
        @four_hundred_and_one_application_json_object = four_hundred_and_one_application_json_object
      end
    end
  end
end
