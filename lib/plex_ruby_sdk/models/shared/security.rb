# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Shared
  

    class Security < ::Crystalline::FieldAugmented
      extend T::Sig


      field :access_token, T.nilable(::String), { 'security': { 'scheme': true, 'type': 'apiKey', 'sub_type': 'header', 'field_name': 'X-Plex-Token' } }


      sig { params(access_token: T.nilable(::String)).void }
      def initialize(access_token: nil)
        @access_token = access_token
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @access_token == other.access_token
        true
      end
    end
  end
end
