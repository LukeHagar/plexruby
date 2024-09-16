# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # The recently added content
    class GetRecentlyAddedResponseBody < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :media_container, T.nilable(::PlexRubySDK::Operations::GetRecentlyAddedMediaContainer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('MediaContainer') } }


      sig { params(media_container: T.nilable(::PlexRubySDK::Operations::GetRecentlyAddedMediaContainer)).void }
      def initialize(media_container: nil)
        @media_container = media_container
      end
    end
  end
end
