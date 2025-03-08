# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    POST_USERS_SIGN_IN_DATA_UNAUTHORIZED_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  
    # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    class PostUsersSignInDataUnauthorized < ::Crystalline::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[::PlexRubySDK::Operations::PostUsersSignInDataAuthenticationErrors]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[::PlexRubySDK::Operations::PostUsersSignInDataAuthenticationErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end
  end
end
