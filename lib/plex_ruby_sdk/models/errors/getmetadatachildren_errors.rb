# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Errors
    

      class GetMetadataChildrenErrors
        extend T::Sig
        include Crystalline::MetadataFields


        field :code, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('code') } }

        field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('message') } }

        field :status, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('status') } }


        sig { params(code: T.nilable(::Integer), message: T.nilable(::String), status: T.nilable(::Integer)).void }
        def initialize(code: nil, message: nil, status: nil)
          @code = code
          @message = message
          @status = status
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @code == other.code
          return false unless @message == other.message
          return false unless @status == other.status
          true
        end
      end
    end
  end
end
