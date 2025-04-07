# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetPlaylistContentsMediaContainer < ::Crystalline::FieldAugmented
      extend T::Sig


      field :composite, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('composite') } }

      field :duration, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('duration') } }

      field :leaf_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('leafCount') } }

      field :metadata, T.nilable(T::Array[::PlexRubySDK::Operations::GetPlaylistContentsMetadata]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Metadata') } }

      field :playlist_type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('playlistType') } }

      field :rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ratingKey') } }

      field :size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }

      field :smart, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('smart') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }


      sig { params(composite: T.nilable(::String), duration: T.nilable(::Integer), leaf_count: T.nilable(::Integer), metadata: T.nilable(T::Array[::PlexRubySDK::Operations::GetPlaylistContentsMetadata]), playlist_type: T.nilable(::String), rating_key: T.nilable(::String), size: T.nilable(::Integer), smart: T.nilable(T::Boolean), title: T.nilable(::String)).void }
      def initialize(composite: nil, duration: nil, leaf_count: nil, metadata: nil, playlist_type: nil, rating_key: nil, size: nil, smart: nil, title: nil)
        @composite = composite
        @duration = duration
        @leaf_count = leaf_count
        @metadata = metadata
        @playlist_type = playlist_type
        @rating_key = rating_key
        @size = size
        @smart = smart
        @title = title
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @composite == other.composite
        return false unless @duration == other.duration
        return false unless @leaf_count == other.leaf_count
        return false unless @metadata == other.metadata
        return false unless @playlist_type == other.playlist_type
        return false unless @rating_key == other.rating_key
        return false unless @size == other.size
        return false unless @smart == other.smart
        return false unless @title == other.title
        true
      end
    end
  end
end
