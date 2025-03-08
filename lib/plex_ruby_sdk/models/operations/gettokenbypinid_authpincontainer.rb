# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_TOKEN_BY_PIN_ID_AUTH_PIN_CONTAINER_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  
    # The Pin with a non-null authToken when it has been verified by the user
    class GetTokenByPinIdAuthPinContainer < ::Crystalline::FieldAugmented
      extend T::Sig

      # The X-Client-Identifier used in the request
      field :client_identifier, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('clientIdentifier') } }

      field :code, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('code') } }

      field :created_at, ::DateTime, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('createdAt'), 'decoder': Utils.datetime_from_iso_format(false) } }

      field :expires_at, ::DateTime, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('expiresAt'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # The number of seconds this pin expires, by default 900 seconds
      field :expires_in, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('expiresIn') } }

      field :id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }
      # Geo location data
      field :location, ::PlexRubySDK::Operations::GetTokenByPinIdGeoData, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('location') } }

      field :product, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('product') } }

      field :qr, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('qr') } }

      field :trusted, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('trusted') } }

      field :auth_token, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('authToken') } }

      field :new_registration, T.nilable(::Object), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('newRegistration') } }


      sig { params(client_identifier: ::String, code: ::String, created_at: ::DateTime, expires_at: ::DateTime, expires_in: ::Integer, id: ::Integer, location: ::PlexRubySDK::Operations::GetTokenByPinIdGeoData, product: ::String, qr: ::String, trusted: T::Boolean, auth_token: T.nilable(::String), new_registration: T.nilable(::Object)).void }
      def initialize(client_identifier: nil, code: nil, created_at: nil, expires_at: nil, expires_in: nil, id: nil, location: nil, product: nil, qr: nil, trusted: nil, auth_token: nil, new_registration: nil)
        @client_identifier = client_identifier
        @code = code
        @created_at = created_at
        @expires_at = expires_at
        @expires_in = expires_in
        @id = id
        @location = location
        @product = product
        @qr = qr
        @trusted = trusted
        @auth_token = auth_token
        @new_registration = new_registration
      end
    end
  end
end
