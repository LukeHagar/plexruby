# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_WATCH_LIST_UNAUTHORIZED_SERVERS = [
      'https://metadata.provider.plex.tv'
    ].freeze
  
    # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    class GetWatchListUnauthorized < ::Crystalline::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[::PlexRubySDK::Operations::GetWatchListWatchlistErrors]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[::PlexRubySDK::Operations::GetWatchListWatchlistErrors])).void }
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
