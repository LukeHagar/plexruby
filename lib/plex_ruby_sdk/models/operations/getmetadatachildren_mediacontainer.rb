# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetMetadataChildrenMediaContainer < ::Crystalline::FieldAugmented
      extend T::Sig


      field :allow_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowSync') } }

      field :art, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('art') } }

      field :directory, T.nilable(T::Array[::PlexRubySDK::Operations::GetMetadataChildrenDirectory]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Directory') } }

      field :identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('identifier') } }

      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :library_section_id, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionID') } }

      field :library_section_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionTitle') } }

      field :library_section_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionUUID') } }

      field :media_tag_prefix, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagPrefix') } }

      field :media_tag_version, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagVersion') } }

      field :metadata, T.nilable(T::Array[::PlexRubySDK::Operations::GetMetadataChildrenMetadata]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Metadata') } }

      field :nocache, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('nocache') } }

      field :parent_index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentIndex') } }

      field :parent_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentTitle') } }

      field :parent_year, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentYear') } }

      field :size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }

      field :summary, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('summary') } }

      field :theme, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('theme') } }

      field :thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }

      field :title1, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title1') } }

      field :title2, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title2') } }

      field :view_group, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewGroup') } }

      field :view_mode, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewMode') } }


      sig { params(allow_sync: T.nilable(T::Boolean), art: T.nilable(::String), directory: T.nilable(T::Array[::PlexRubySDK::Operations::GetMetadataChildrenDirectory]), identifier: T.nilable(::String), key: T.nilable(::String), library_section_id: T.nilable(::Integer), library_section_title: T.nilable(::String), library_section_uuid: T.nilable(::String), media_tag_prefix: T.nilable(::String), media_tag_version: T.nilable(::Integer), metadata: T.nilable(T::Array[::PlexRubySDK::Operations::GetMetadataChildrenMetadata]), nocache: T.nilable(T::Boolean), parent_index: T.nilable(::Integer), parent_title: T.nilable(::String), parent_year: T.nilable(::Integer), size: T.nilable(::Integer), summary: T.nilable(::String), theme: T.nilable(::String), thumb: T.nilable(::String), title1: T.nilable(::String), title2: T.nilable(::String), view_group: T.nilable(::String), view_mode: T.nilable(::Integer)).void }
      def initialize(allow_sync: nil, art: nil, directory: nil, identifier: nil, key: nil, library_section_id: nil, library_section_title: nil, library_section_uuid: nil, media_tag_prefix: nil, media_tag_version: nil, metadata: nil, nocache: nil, parent_index: nil, parent_title: nil, parent_year: nil, size: nil, summary: nil, theme: nil, thumb: nil, title1: nil, title2: nil, view_group: nil, view_mode: nil)
        @allow_sync = allow_sync
        @art = art
        @directory = directory
        @identifier = identifier
        @key = key
        @library_section_id = library_section_id
        @library_section_title = library_section_title
        @library_section_uuid = library_section_uuid
        @media_tag_prefix = media_tag_prefix
        @media_tag_version = media_tag_version
        @metadata = metadata
        @nocache = nocache
        @parent_index = parent_index
        @parent_title = parent_title
        @parent_year = parent_year
        @size = size
        @summary = summary
        @theme = theme
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
        return false unless @directory == other.directory
        return false unless @identifier == other.identifier
        return false unless @key == other.key
        return false unless @library_section_id == other.library_section_id
        return false unless @library_section_title == other.library_section_title
        return false unless @library_section_uuid == other.library_section_uuid
        return false unless @media_tag_prefix == other.media_tag_prefix
        return false unless @media_tag_version == other.media_tag_version
        return false unless @metadata == other.metadata
        return false unless @nocache == other.nocache
        return false unless @parent_index == other.parent_index
        return false unless @parent_title == other.parent_title
        return false unless @parent_year == other.parent_year
        return false unless @size == other.size
        return false unless @summary == other.summary
        return false unless @theme == other.theme
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
