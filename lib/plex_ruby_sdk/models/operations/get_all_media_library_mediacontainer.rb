# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetAllMediaLibraryMediaContainer < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # Indicates whether syncing is allowed.
      field :allow_sync, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowSync') } }
      # URL for the background artwork of the media container.
      field :art, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('art') } }
      # The content type or mode.
      field :content, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('content') } }
      # An plugin identifier for the media container.
      field :identifier, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('identifier') } }
      # The unique identifier for the library section.
      field :library_section_id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionID') } }
      # The title of the library section.
      field :library_section_title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionTitle') } }
      # The prefix used for media tag resource paths.
      field :media_tag_prefix, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagPrefix') } }
      # The version number for media tags.
      field :media_tag_version, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagVersion') } }
      # Specifies whether caching is disabled.
      field :nocache, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('nocache') } }
      # Offset value for pagination.
      field :offset, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('offset') } }
      # Number of media items returned in this response.
      field :size, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }
      # URL for the thumbnail image of the media container.
      field :thumb, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }
      # The primary title of the media container.
      field :title1, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title1') } }
      # The secondary title of the media container.
      field :title2, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title2') } }
      # Total number of media items in the library.
      field :total_size, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('totalSize') } }
      # Identifier for the view group layout.
      field :view_group, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewGroup') } }
      # The universally unique identifier for the library section.
      field :library_section_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionUUID') } }
      # The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
      # 
      field :meta, T.nilable(::PlexRubySDK::Operations::GetAllMediaLibraryMeta), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Meta') } }
      # An array of metadata items.
      field :metadata, T.nilable(T::Array[::PlexRubySDK::Operations::GetAllMediaLibraryMetadata]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Metadata') } }


      sig { params(allow_sync: T::Boolean, art: ::String, content: ::String, identifier: ::String, library_section_id: ::Integer, library_section_title: ::String, media_tag_prefix: ::String, media_tag_version: ::Integer, nocache: T::Boolean, offset: ::Integer, size: ::Integer, thumb: ::String, title1: ::String, title2: ::String, total_size: ::Integer, view_group: ::String, library_section_uuid: T.nilable(::String), meta: T.nilable(::PlexRubySDK::Operations::GetAllMediaLibraryMeta), metadata: T.nilable(T::Array[::PlexRubySDK::Operations::GetAllMediaLibraryMetadata])).void }
      def initialize(allow_sync: nil, art: nil, content: nil, identifier: nil, library_section_id: nil, library_section_title: nil, media_tag_prefix: nil, media_tag_version: nil, nocache: nil, offset: nil, size: nil, thumb: nil, title1: nil, title2: nil, total_size: nil, view_group: nil, library_section_uuid: nil, meta: nil, metadata: nil)
        @allow_sync = allow_sync
        @art = art
        @content = content
        @identifier = identifier
        @library_section_id = library_section_id
        @library_section_title = library_section_title
        @media_tag_prefix = media_tag_prefix
        @media_tag_version = media_tag_version
        @nocache = nocache
        @offset = offset
        @size = size
        @thumb = thumb
        @title1 = title1
        @title2 = title2
        @total_size = total_size
        @view_group = view_group
        @library_section_uuid = library_section_uuid
        @meta = meta
        @metadata = metadata
      end
    end
  end
end
