# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class GetDevicesErrors < OpenApiSDK::Utils::FieldAugmented
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
    class GetDevicesServerResponseBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::GetDevicesErrors]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::GetDevicesErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class Device < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :client_identifier, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('clientIdentifier') } }

      field :created_at, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('createdAt') } }

      field :id, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }

      field :platform, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('platform') } }


      sig { params(client_identifier: T.nilable(String), created_at: T.nilable(Float), id: T.nilable(Float), name: T.nilable(String), platform: T.nilable(String)).void }
      def initialize(client_identifier: nil, created_at: nil, id: nil, name: nil, platform: nil)
        @client_identifier = client_identifier
        @created_at = created_at
        @id = id
        @name = name
        @platform = platform
      end
    end


    class GetDevicesMediaContainer < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :device, T.nilable(T::Array[Operations::Device]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('Device') } }

      field :identifier, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('identifier') } }

      field :size, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('size') } }


      sig { params(device: T.nilable(T::Array[Operations::Device]), identifier: T.nilable(String), size: T.nilable(Float)).void }
      def initialize(device: nil, identifier: nil, size: nil)
        @device = device
        @identifier = identifier
        @size = size
      end
    end

    # Devices
    class GetDevicesResponseBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :media_container, T.nilable(Operations::GetDevicesMediaContainer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('MediaContainer') } }


      sig { params(media_container: T.nilable(Operations::GetDevicesMediaContainer)).void }
      def initialize(media_container: nil)
        @media_container = media_container
      end
    end


    class GetDevicesResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Devices
      field :two_hundred_application_json_object, T.nilable(Operations::GetDevicesResponseBody)
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :four_hundred_and_one_application_json_object, T.nilable(Operations::GetDevicesServerResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, two_hundred_application_json_object: T.nilable(Operations::GetDevicesResponseBody), four_hundred_and_one_application_json_object: T.nilable(Operations::GetDevicesServerResponseBody)).void }
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
