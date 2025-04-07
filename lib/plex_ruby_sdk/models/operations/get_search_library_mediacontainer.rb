# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetSearchLibraryMediaContainer < ::Crystalline::FieldAugmented
      extend T::Sig


      field :allow_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowSync') } }

      field :art, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('art') } }

      field :identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('identifier') } }

      field :media_tag_prefix, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagPrefix') } }

      field :media_tag_version, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagVersion') } }

      field :metadata, T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchLibraryMetadata]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Metadata') } }

      field :nocache, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('nocache') } }

      field :size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }

      field :thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }

      field :title1, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title1') } }

      field :title2, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title2') } }

      field :view_group, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewGroup') } }

      field :view_mode, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewMode') } }


      sig { params(allow_sync: T.nilable(T::Boolean), art: T.nilable(::String), identifier: T.nilable(::String), media_tag_prefix: T.nilable(::String), media_tag_version: T.nilable(::Integer), metadata: T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchLibraryMetadata]), nocache: T.nilable(T::Boolean), size: T.nilable(::Integer), thumb: T.nilable(::String), title1: T.nilable(::String), title2: T.nilable(::String), view_group: T.nilable(::String), view_mode: T.nilable(::Integer)).void }
      def initialize(allow_sync: nil, art: nil, identifier: nil, media_tag_prefix: nil, media_tag_version: nil, metadata: nil, nocache: nil, size: nil, thumb: nil, title1: nil, title2: nil, view_group: nil, view_mode: nil)
        @allow_sync = allow_sync
        @art = art
        @identifier = identifier
        @media_tag_prefix = media_tag_prefix
        @media_tag_version = media_tag_version
        @metadata = metadata
        @nocache = nocache
        @size = size
        @thumb = thumb
        @title1 = title1
        @title2 = title2
        @view_group = view_group
        @view_mode = view_mode
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @allow_sync == other.allow_sync
        return false unless @art == other.art
        return false unless @identifier == other.identifier
        return false unless @media_tag_prefix == other.media_tag_prefix
        return false unless @media_tag_version == other.media_tag_version
        return false unless @metadata == other.metadata
        return false unless @nocache == other.nocache
        return false unless @size == other.size
        return false unless @thumb == other.thumb
        return false unless @title1 == other.title1
        return false unless @title2 == other.title2
        return false unless @view_group == other.view_group
        return false unless @view_mode == other.view_mode
        true
      end
    end
  end
end
