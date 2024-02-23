# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
    GET_PIN_RESPONSE_BODY_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  
    # The Pin
    class GetPinResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :auth_token, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('authToken') } }

      field :client_identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('clientIdentifier') } }

      field :code, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('code') } }

      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('createdAt'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :expires_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('expiresAt'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :expires_in, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('expiresIn') } }
      # PinID for use with authentication
      field :id, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :location, T.nilable(::OpenApiSDK::Operations::Location), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('location') } }

      field :new_registration, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('newRegistration') } }

      field :product, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('product') } }
      # a link to a QR code hosted on plex.tv 
      # The QR code redirects to the relevant `plex.tv/link` authentication page
      # Which then prompts the user for the 4 Digit Link Pin
      # 
      field :qr, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('qr') } }

      field :trusted, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('trusted') } }


      sig { params(auth_token: T.nilable(::String), client_identifier: T.nilable(::String), code: T.nilable(::String), created_at: T.nilable(::DateTime), expires_at: T.nilable(::DateTime), expires_in: T.nilable(::Float), id: T.nilable(::Float), location: T.nilable(::OpenApiSDK::Operations::Location), new_registration: T.nilable(::String), product: T.nilable(::String), qr: T.nilable(::String), trusted: T.nilable(T::Boolean)).void }
      def initialize(auth_token: nil, client_identifier: nil, code: nil, created_at: nil, expires_at: nil, expires_in: nil, id: nil, location: nil, new_registration: nil, product: nil, qr: nil, trusted: nil)
        @auth_token = auth_token
        @client_identifier = client_identifier
        @code = code
        @created_at = created_at
        @expires_at = expires_at
        @expires_in = expires_in
        @id = id
        @location = location
        @new_registration = new_registration
        @product = product
        @qr = qr
        @trusted = trusted
      end
    end
  end
end
