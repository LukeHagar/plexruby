# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetMediaMetaDataMediaContainer < ::Crystalline::FieldAugmented
      extend T::Sig

      # Indicates whether syncing is allowed.
      field :allow_sync, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowSync') } }
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
      # An array of metadata items.
      field :metadata, T::Array[::PlexRubySDK::Operations::GetMediaMetaDataMetadata], { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Metadata') } }
      # Number of media items returned in this response.
      field :size, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }
      # The universally unique identifier for the library section.
      field :library_section_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionUUID') } }


      sig { params(allow_sync: T::Boolean, identifier: ::String, library_section_id: ::Integer, library_section_title: ::String, media_tag_prefix: ::String, media_tag_version: ::Integer, metadata: T::Array[::PlexRubySDK::Operations::GetMediaMetaDataMetadata], size: ::Integer, library_section_uuid: T.nilable(::String)).void }
      def initialize(allow_sync: nil, identifier: nil, library_section_id: nil, library_section_title: nil, media_tag_prefix: nil, media_tag_version: nil, metadata: nil, size: nil, library_section_uuid: nil)
        @allow_sync = allow_sync
        @identifier = identifier
        @library_section_id = library_section_id
        @library_section_title = library_section_title
        @media_tag_prefix = media_tag_prefix
        @media_tag_version = media_tag_version
        @metadata = metadata
        @size = size
        @library_section_uuid = library_section_uuid
      end
    end
  end
end
