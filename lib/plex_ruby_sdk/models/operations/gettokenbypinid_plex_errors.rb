# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_TOKEN_BY_PIN_ID_PLEX_ERRORS_SERVERS = [
      'https://plex.tv/api/v2/'
    ].freeze
  

    class GetTokenByPinIdPlexErrors < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :code, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('code') } }

      field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('message') } }


      sig { params(code: T.nilable(::Integer), message: T.nilable(::String)).void }
      def initialize(code: nil, message: nil)
        @code = code
        @message = message
      end
    end
  end
end