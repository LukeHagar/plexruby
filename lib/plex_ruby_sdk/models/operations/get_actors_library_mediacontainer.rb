# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetActorsLibraryMediaContainer
        extend T::Sig
        include Crystalline::MetadataFields

        # Indicates whether syncing is allowed.
        field :allow_sync, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowSync') } }
        # URL for the background artwork of the media container.
        field :art, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('art') } }
        # An plugin identifier for the media container.
        field :identifier, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('identifier') } }
        # The prefix used for media tag resource paths.
        field :media_tag_prefix, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagPrefix') } }
        # The version number for media tags.
        field :media_tag_version, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagVersion') } }
        # Specifies whether caching is disabled.
        field :nocache, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('nocache') } }
        # Number of media items returned in this response.
        field :size, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }
        # URL for the thumbnail image of the media container.
        field :thumb, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }
        # The primary title of the media container.
        field :title1, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title1') } }
        # The secondary title of the media container.
        field :title2, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title2') } }
        # Identifier for the view group layout.
        field :view_group, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewGroup') } }
        # An array of actor entries for media items.
        field :directory, T.nilable(T::Array[Models::Operations::GetActorsLibraryDirectory]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Directory') } }
        # Identifier for the view mode.
        field :view_mode, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewMode') } }


        sig { params(allow_sync: T::Boolean, art: ::String, identifier: ::String, media_tag_prefix: ::String, media_tag_version: ::Integer, nocache: T::Boolean, size: ::Integer, thumb: ::String, title1: ::String, title2: ::String, view_group: ::String, directory: T.nilable(T::Array[Models::Operations::GetActorsLibraryDirectory]), view_mode: T.nilable(::String)).void }
        def initialize(allow_sync: nil, art: nil, identifier: nil, media_tag_prefix: nil, media_tag_version: nil, nocache: nil, size: nil, thumb: nil, title1: nil, title2: nil, view_group: nil, directory: nil, view_mode: nil)
          @allow_sync = allow_sync
          @art = art
          @identifier = identifier
          @media_tag_prefix = media_tag_prefix
          @media_tag_version = media_tag_version
          @nocache = nocache
          @size = size
          @thumb = thumb
          @title1 = title1
          @title2 = title2
          @view_group = view_group
          @directory = directory
          @view_mode = view_mode
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @allow_sync == other.allow_sync
          return false unless @art == other.art
          return false unless @identifier == other.identifier
          return false unless @media_tag_prefix == other.media_tag_prefix
          return false unless @media_tag_version == other.media_tag_version
          return false unless @nocache == other.nocache
          return false unless @size == other.size
          return false unless @thumb == other.thumb
          return false unless @title1 == other.title1
          return false unless @title2 == other.title2
          return false unless @view_group == other.view_group
          return false unless @directory == other.directory
          return false unless @view_mode == other.view_mode
          true
        end
      end
    end
  end
end
