# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_TOKEN_BY_PIN_ID_REQUEST_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  

    class GetTokenByPinIdRequest < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # The PinID to retrieve an access token for
      field :pin_id, ::Integer, { 'path_param': { 'field_name': 'pinID', 'style': 'simple', 'explode': false } }
      # The unique identifier for the client application. This is used to track the client application and its usage. (UUID, serial number, or other number unique per device)
      field :client_id, T.nilable(::String), { 'query_param': { 'field_name': 'X-Plex-Client-Identifier', 'style': 'form', 'explode': true } }

      field :client_name, T.nilable(::String), { 'query_param': { 'field_name': 'X-Plex-Product', 'style': 'form', 'explode': true } }

      field :client_platform, T.nilable(::String), { 'query_param': { 'field_name': 'X-Plex-Platform', 'style': 'form', 'explode': true } }

      field :client_version, T.nilable(::String), { 'query_param': { 'field_name': 'X-Plex-Version', 'style': 'form', 'explode': true } }

      field :device_name, T.nilable(::String), { 'query_param': { 'field_name': 'X-Plex-Device', 'style': 'form', 'explode': true } }


      sig { params(pin_id: ::Integer, client_id: T.nilable(::String), client_name: T.nilable(::String), client_platform: T.nilable(::String), client_version: T.nilable(::String), device_name: T.nilable(::String)).void }
      def initialize(pin_id: nil, client_id: nil, client_name: nil, client_platform: nil, client_version: nil, device_name: nil)
        @pin_id = pin_id
        @client_id = client_id
        @client_name = client_name
        @client_platform = client_platform
        @client_version = client_version
        @device_name = device_name
      end
    end
  end
end
