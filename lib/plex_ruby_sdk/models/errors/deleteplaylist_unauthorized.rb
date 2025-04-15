# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Errors
    
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      class DeletePlaylistUnauthorized
        extend T::Sig
        include Crystalline::MetadataFields


        field :errors, T.nilable(T::Array[Models::Errors::DeletePlaylistPlaylistsErrors]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('errors') } }
        # Raw HTTP response; suitable for custom response parsing
        field :raw_response, T.nilable(::Faraday::Response), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('-') } }


        sig { params(errors: T.nilable(T::Array[Models::Errors::DeletePlaylistPlaylistsErrors]), raw_response: T.nilable(::Faraday::Response)).void }
        def initialize(errors: nil, raw_response: nil)
          @errors = errors
          @raw_response = raw_response
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @errors == other.errors
          return false unless @raw_response == other.raw_response
          true
        end
      end
    end
  end
end
