# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_WATCH_LIST_BAD_REQUEST_SERVERS = [
      'https://metadata.provider.plex.tv'
    ].freeze
  
    # Bad Request - A parameter was not specified, or was specified incorrectly.
    class GetWatchListBadRequest < ::Crystalline::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[::PlexRubySDK::Operations::GetWatchListErrors]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[::PlexRubySDK::Operations::GetWatchListErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end
  end
end
