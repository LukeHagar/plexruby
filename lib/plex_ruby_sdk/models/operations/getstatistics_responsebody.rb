# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # Media Statistics
    class GetStatisticsResponseBody < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :media_container, T.nilable(::PlexRubySDK::Operations::GetStatisticsMediaContainer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('MediaContainer') } }


      sig { params(media_container: T.nilable(::PlexRubySDK::Operations::GetStatisticsMediaContainer)).void }
      def initialize(media_container: nil)
        @media_container = media_container
      end
    end
  end
end
