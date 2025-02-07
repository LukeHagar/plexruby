# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_USERS_RESPONSE_BODY_SERVERS = [
      'https://plex.tv/api'
    ].freeze
  
    # Successful response with media container data in XML
    class GetUsersResponseBody < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # Container holding user and server details.
      field :media_container, T.nilable(::PlexRubySDK::Operations::GetUsersMediaContainer)


      sig { params(media_container: T.nilable(::PlexRubySDK::Operations::GetUsersMediaContainer)).void }
      def initialize(media_container: nil)
        @media_container = media_container
      end
    end
  end
end
