# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
    # 
    class GetLibraryItemsMediaContainer < ::Crystalline::FieldAugmented
      extend T::Sig


      field :allow_sync, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowSync') } }

      field :art, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('art') } }

      field :content, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('content') } }

      field :identifier, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('identifier') } }

      field :library_section_id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionID') } }

      field :library_section_title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionTitle') } }

      field :library_section_uuid, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionUUID') } }

      field :media_tag_prefix, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagPrefix') } }

      field :media_tag_version, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagVersion') } }

      field :offset, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('offset') } }

      field :size, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }

      field :thumb, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }

      field :title1, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title1') } }

      field :title2, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title2') } }

      field :total_size, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('totalSize') } }

      field :view_group, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewGroup') } }

      field :field_type, T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryItemsFieldType]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('FieldType') } }
      # The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
      # 
      field :meta, T.nilable(::PlexRubySDK::Operations::GetLibraryItemsMeta), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Meta') } }

      field :metadata, T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryItemsMetadata]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Metadata') } }

      field :mixed_parents, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mixedParents') } }

      field :nocache, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('nocache') } }

      field :type, T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryItemsType]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Type') } }

      field :view_mode, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewMode') } }


      sig { params(allow_sync: T::Boolean, art: ::String, content: ::String, identifier: ::String, library_section_id: ::Integer, library_section_title: ::String, library_section_uuid: ::String, media_tag_prefix: ::String, media_tag_version: ::Integer, offset: ::Integer, size: ::Integer, thumb: ::String, title1: ::String, title2: ::String, total_size: ::Integer, view_group: ::String, field_type: T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryItemsFieldType]), meta: T.nilable(::PlexRubySDK::Operations::GetLibraryItemsMeta), metadata: T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryItemsMetadata]), mixed_parents: T.nilable(T::Boolean), nocache: T.nilable(T::Boolean), type: T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryItemsType]), view_mode: T.nilable(::Integer)).void }
      def initialize(allow_sync: nil, art: nil, content: nil, identifier: nil, library_section_id: nil, library_section_title: nil, library_section_uuid: nil, media_tag_prefix: nil, media_tag_version: nil, offset: nil, size: nil, thumb: nil, title1: nil, title2: nil, total_size: nil, view_group: nil, field_type: nil, meta: nil, metadata: nil, mixed_parents: nil, nocache: nil, type: nil, view_mode: nil)
        @allow_sync = allow_sync
        @art = art
        @content = content
        @identifier = identifier
        @library_section_id = library_section_id
        @library_section_title = library_section_title
        @library_section_uuid = library_section_uuid
        @media_tag_prefix = media_tag_prefix
        @media_tag_version = media_tag_version
        @offset = offset
        @size = size
        @thumb = thumb
        @title1 = title1
        @title2 = title2
        @total_size = total_size
        @view_group = view_group
        @field_type = field_type
        @meta = meta
        @metadata = metadata
        @mixed_parents = mixed_parents
        @nocache = nocache
        @type = type
        @view_mode = view_mode
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @allow_sync == other.allow_sync
        return false unless @art == other.art
        return false unless @content == other.content
        return false unless @identifier == other.identifier
        return false unless @library_section_id == other.library_section_id
        return false unless @library_section_title == other.library_section_title
        return false unless @library_section_uuid == other.library_section_uuid
        return false unless @media_tag_prefix == other.media_tag_prefix
        return false unless @media_tag_version == other.media_tag_version
        return false unless @offset == other.offset
        return false unless @size == other.size
        return false unless @thumb == other.thumb
        return false unless @title1 == other.title1
        return false unless @title2 == other.title2
        return false unless @total_size == other.total_size
        return false unless @view_group == other.view_group
        return false unless @field_type == other.field_type
        return false unless @meta == other.meta
        return false unless @metadata == other.metadata
        return false unless @mixed_parents == other.mixed_parents
        return false unless @nocache == other.nocache
        return false unless @type == other.type
        return false unless @view_mode == other.view_mode
        true
      end
    end
  end
end
