# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_COMPANIONS_DATA_BAD_REQUEST_SERVERS = [
      'https://plex.tv/api/v2/'
    ].freeze
  
    # Bad Request - A parameter was not specified, or was specified incorrectly.
    class GetCompanionsDataBadRequest < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[::PlexRubySDK::Operations::GetCompanionsDataErrors]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[::PlexRubySDK::Operations::GetCompanionsDataErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end
  end
end
