# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_SERVER_RESOURCES_BAD_REQUEST_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  
    # Bad Request - A parameter was not specified, or was specified incorrectly.
    class GetServerResourcesBadRequest < ::Crystalline::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[::PlexRubySDK::Operations::GetServerResourcesErrors]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[::PlexRubySDK::Operations::GetServerResourcesErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @errors == other.errors
        true
      end
    end
  end
end
