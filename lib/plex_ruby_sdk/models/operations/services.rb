# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    SERVICES_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  

    class Services < ::Crystalline::FieldAugmented
      extend T::Sig


      field :endpoint, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('endpoint') } }

      field :identifier, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('identifier') } }

      field :secret, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('secret') } }

      field :status, ::PlexRubySDK::Operations::GetTokenDetailsStatus, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::GetTokenDetailsStatus, false) } }

      field :token, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('token') } }


      sig { params(endpoint: ::String, identifier: ::String, secret: ::String, status: ::PlexRubySDK::Operations::GetTokenDetailsStatus, token: ::String).void }
      def initialize(endpoint: nil, identifier: nil, secret: nil, status: nil, token: nil)
        @endpoint = endpoint
        @identifier = identifier
        @secret = secret
        @status = status
        @token = token
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @endpoint == other.endpoint
        return false unless @identifier == other.identifier
        return false unless @secret == other.secret
        return false unless @status == other.status
        return false unless @token == other.token
        true
      end
    end
  end
end
