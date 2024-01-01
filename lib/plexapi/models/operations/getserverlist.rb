# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class GetServerListErrors < OpenApiSDK::Utils::FieldAugmented
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
    class GetServerListServerResponseBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::GetServerListErrors]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::GetServerListErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class GetServerListServer < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :address, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('address') } }

      field :host, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('host') } }

      field :machine_identifier, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('machineIdentifier') } }

      field :name, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('name') } }

      field :port, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('port') } }

      field :version, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('version') } }


      sig { params(address: T.nilable(String), host: T.nilable(String), machine_identifier: T.nilable(String), name: T.nilable(String), port: T.nilable(Float), version: T.nilable(String)).void }
      def initialize(address: nil, host: nil, machine_identifier: nil, name: nil, port: nil, version: nil)
        @address = address
        @host = host
        @machine_identifier = machine_identifier
        @name = name
        @port = port
        @version = version
      end
    end


    class GetServerListMediaContainer < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :server, T.nilable(T::Array[Operations::GetServerListServer]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('Server') } }

      field :size, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('size') } }


      sig { params(server: T.nilable(T::Array[Operations::GetServerListServer]), size: T.nilable(Float)).void }
      def initialize(server: nil, size: nil)
        @server = server
        @size = size
      end
    end

    # List of Servers
    class GetServerListResponseBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :media_container, T.nilable(Operations::GetServerListMediaContainer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('MediaContainer') } }


      sig { params(media_container: T.nilable(Operations::GetServerListMediaContainer)).void }
      def initialize(media_container: nil)
        @media_container = media_container
      end
    end


    class GetServerListResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # List of Servers
      field :two_hundred_application_json_object, T.nilable(Operations::GetServerListResponseBody)
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :four_hundred_and_one_application_json_object, T.nilable(Operations::GetServerListServerResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, two_hundred_application_json_object: T.nilable(Operations::GetServerListResponseBody), four_hundred_and_one_application_json_object: T.nilable(Operations::GetServerListServerResponseBody)).void }
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