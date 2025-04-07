# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
    # 
    class GetRecentlyAddedLibraryMediaContainer < ::Crystalline::FieldAugmented
      extend T::Sig


      field :allow_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowSync') } }

      field :field_type, T.nilable(T::Array[::PlexRubySDK::Operations::FieldType]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('FieldType') } }

      field :identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('identifier') } }

      field :media_tag_prefix, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagPrefix') } }

      field :media_tag_version, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagVersion') } }

      field :metadata, T.nilable(T::Array[::PlexRubySDK::Operations::GetRecentlyAddedLibraryMetadata]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Metadata') } }

      field :mixed_parents, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mixedParents') } }

      field :size, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }

      field :type, T.nilable(T::Array[::PlexRubySDK::Operations::GetRecentlyAddedLibraryType]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Type') } }


      sig { params(allow_sync: T.nilable(T::Boolean), field_type: T.nilable(T::Array[::PlexRubySDK::Operations::FieldType]), identifier: T.nilable(::String), media_tag_prefix: T.nilable(::String), media_tag_version: T.nilable(::Float), metadata: T.nilable(T::Array[::PlexRubySDK::Operations::GetRecentlyAddedLibraryMetadata]), mixed_parents: T.nilable(T::Boolean), size: T.nilable(::Float), type: T.nilable(T::Array[::PlexRubySDK::Operations::GetRecentlyAddedLibraryType])).void }
      def initialize(allow_sync: nil, field_type: nil, identifier: nil, media_tag_prefix: nil, media_tag_version: nil, metadata: nil, mixed_parents: nil, size: nil, type: nil)
        @allow_sync = allow_sync
        @field_type = field_type
        @identifier = identifier
        @media_tag_prefix = media_tag_prefix
        @media_tag_version = media_tag_version
        @metadata = metadata
        @mixed_parents = mixed_parents
        @size = size
        @type = type
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @allow_sync == other.allow_sync
        return false unless @field_type == other.field_type
        return false unless @identifier == other.identifier
        return false unless @media_tag_prefix == other.media_tag_prefix
        return false unless @media_tag_version == other.media_tag_version
        return false unless @metadata == other.metadata
        return false unless @mixed_parents == other.mixed_parents
        return false unless @size == other.size
        return false unless @type == other.type
        true
      end
    end
  end
end
