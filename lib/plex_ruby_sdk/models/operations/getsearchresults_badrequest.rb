# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # Bad Request - A parameter was not specified, or was specified incorrectly.
    class GetSearchResultsBadRequest < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsErrors]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end
  end
end
