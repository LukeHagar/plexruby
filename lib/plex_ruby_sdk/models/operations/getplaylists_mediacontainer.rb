# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetPlaylistsMediaContainer < ::Crystalline::FieldAugmented
      extend T::Sig


      field :metadata, T.nilable(T::Array[::PlexRubySDK::Operations::GetPlaylistsMetadata]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Metadata') } }

      field :size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }


      sig { params(metadata: T.nilable(T::Array[::PlexRubySDK::Operations::GetPlaylistsMetadata]), size: T.nilable(::Integer)).void }
      def initialize(metadata: nil, size: nil)
        @metadata = metadata
        @size = size
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @metadata == other.metadata
        return false unless @size == other.size
        true
      end
    end
  end
end
