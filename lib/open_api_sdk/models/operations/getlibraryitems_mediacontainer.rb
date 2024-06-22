# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetLibraryItemsMediaContainer < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :allow_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('allowSync') } }

      field :art, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('art') } }

      field :identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('identifier') } }

      field :library_section_id, T.nilable(::Object), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('librarySectionID') } }

      field :library_section_title, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('librarySectionTitle') } }

      field :library_section_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('librarySectionUUID') } }

      field :media_tag_prefix, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('mediaTagPrefix') } }

      field :media_tag_version, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('mediaTagVersion') } }

      field :metadata, T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsMetadata]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Metadata') } }

      field :mixed_parents, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('mixedParents') } }

      field :size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('size') } }

      field :thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('thumb') } }

      field :title1, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title1') } }

      field :title2, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title2') } }

      field :view_group, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('viewGroup') } }

      field :view_mode, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('viewMode') } }


      sig { params(allow_sync: T.nilable(T::Boolean), art: T.nilable(::String), identifier: T.nilable(::String), library_section_id: T.nilable(::Object), library_section_title: T.nilable(::String), library_section_uuid: T.nilable(::String), media_tag_prefix: T.nilable(::String), media_tag_version: T.nilable(::Integer), metadata: T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsMetadata]), mixed_parents: T.nilable(T::Boolean), size: T.nilable(::Integer), thumb: T.nilable(::String), title1: T.nilable(::String), title2: T.nilable(::String), view_group: T.nilable(::String), view_mode: T.nilable(::Integer)).void }
      def initialize(allow_sync: nil, art: nil, identifier: nil, library_section_id: nil, library_section_title: nil, library_section_uuid: nil, media_tag_prefix: nil, media_tag_version: nil, metadata: nil, mixed_parents: nil, size: nil, thumb: nil, title1: nil, title2: nil, view_group: nil, view_mode: nil)
        @allow_sync = allow_sync
        @art = art
        @identifier = identifier
        @library_section_id = library_section_id
        @library_section_title = library_section_title
        @library_section_uuid = library_section_uuid
        @media_tag_prefix = media_tag_prefix
        @media_tag_version = media_tag_version
        @metadata = metadata
        @mixed_parents = mixed_parents
        @size = size
        @thumb = thumb
        @title1 = title1
        @title2 = title2
        @view_group = view_group
        @view_mode = view_mode
      end
    end
  end
end
