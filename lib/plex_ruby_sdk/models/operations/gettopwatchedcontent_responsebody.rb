# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # The metadata of the library item.
    class GetTopWatchedContentResponseBody < ::Crystalline::FieldAugmented
      extend T::Sig


      field :media_container, T.nilable(::PlexRubySDK::Operations::GetTopWatchedContentMediaContainer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('MediaContainer') } }


      sig { params(media_container: T.nilable(::PlexRubySDK::Operations::GetTopWatchedContentMediaContainer)).void }
      def initialize(media_container: nil)
        @media_container = media_container
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @media_container == other.media_container
        true
      end
    end
  end
end
