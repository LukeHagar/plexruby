# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    class GetFileHashUnauthorized < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[::PlexRubySDK::Operations::GetFileHashLibraryErrors]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[::PlexRubySDK::Operations::GetFileHashLibraryErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end
  end
end
