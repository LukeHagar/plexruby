# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Errors
    
      # Bad Request - A parameter was not specified, or was specified incorrectly.
      class ApplyUpdatesBadRequest
        extend T::Sig
        include Crystalline::MetadataFields


        field :errors, T.nilable(T::Array[Models::Errors::ApplyUpdatesErrors]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('errors') } }
        # Raw HTTP response; suitable for custom response parsing
        field :raw_response, T.nilable(::Faraday::Response), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('-') } }


        sig { params(errors: T.nilable(T::Array[Models::Errors::ApplyUpdatesErrors]), raw_response: T.nilable(::Faraday::Response)).void }
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
