# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_TOKEN_BY_PIN_ID_REQUEST_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  

    class GetTokenByPinIdRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # An opaque identifier unique to the client (UUID, serial number, or other unique device ID)
      field :client_id, ::String, { 'header': { 'field_name': 'X-Plex-Client-Identifier', 'style': 'simple', 'explode': false } }
      # The PinID to retrieve an access token for
      field :pin_id, ::Integer, { 'path_param': { 'field_name': 'pinID', 'style': 'simple', 'explode': false } }
      # The name of the client application. (Plex Web, Plex Media Server, etc.)
      field :client_name, T.nilable(::String), { 'header': { 'field_name': 'X-Plex-Product', 'style': 'simple', 'explode': false } }
      # The version of the client application.
      field :client_version, T.nilable(::String), { 'header': { 'field_name': 'X-Plex-Version', 'style': 'simple', 'explode': false } }
      # A relatively friendly name for the client device
      field :device_nickname, T.nilable(::String), { 'header': { 'field_name': 'X-Plex-Device', 'style': 'simple', 'explode': false } }
      # The platform of the client application.
      field :platform, T.nilable(::String), { 'header': { 'field_name': 'X-Plex-Platform', 'style': 'simple', 'explode': false } }


      sig { params(client_id: ::String, pin_id: ::Integer, client_name: T.nilable(::String), client_version: T.nilable(::String), device_nickname: T.nilable(::String), platform: T.nilable(::String)).void }
      def initialize(client_id: nil, pin_id: nil, client_name: nil, client_version: nil, device_nickname: nil, platform: nil)
        @client_id = client_id
        @pin_id = pin_id
        @client_name = client_name
        @client_version = client_version
        @device_nickname = device_nickname
        @platform = platform
      end
    end
  end
end
