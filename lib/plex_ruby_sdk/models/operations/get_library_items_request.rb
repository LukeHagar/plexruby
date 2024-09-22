# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetLibraryItemsRequest < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # The unique key of the Plex library. 
      # Note: This is unique in the context of the Plex server.
      # 
      field :section_key, ::Integer, { 'path_param': { 'field_name': 'sectionKey', 'style': 'simple', 'explode': false } }
      # A key representing a specific tag within the section.
      field :tag, ::PlexRubySDK::Operations::Tag, { 'path_param': { 'field_name': 'tag', 'style': 'simple', 'explode': false } }
      # Adds the Guids object to the response
      # 
      field :include_guids, T.nilable(::PlexRubySDK::Operations::IncludeGuids), { 'query_param': { 'field_name': 'includeGuids', 'style': 'form', 'explode': true } }
      # Adds the Meta object to the response
      # 
      field :include_meta, T.nilable(::PlexRubySDK::Operations::IncludeMeta), { 'query_param': { 'field_name': 'includeMeta', 'style': 'form', 'explode': true } }
      # The type of media to retrieve.
      # 1 = movie
      # 2 = show
      # 3 = season
      # 4 = episode
      # E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries
      # 
      field :type, T.nilable(::PlexRubySDK::Operations::Type), { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }
      # The number of items to return. If not specified, all items will be returned.
      # If the number of items exceeds the limit, the response will be paginated.
      # By default this is 50
      # 
      field :x_plex_container_size, T.nilable(::Integer), { 'query_param': { 'field_name': 'X-Plex-Container-Size', 'style': 'form', 'explode': true } }
      # The index of the first item to return. If not specified, the first item will be returned.
      # If the number of items exceeds the limit, the response will be paginated.
      # By default this is 0
      # 
      field :x_plex_container_start, T.nilable(::Integer), { 'query_param': { 'field_name': 'X-Plex-Container-Start', 'style': 'form', 'explode': true } }


      sig { params(section_key: ::Integer, tag: ::PlexRubySDK::Operations::Tag, include_guids: T.nilable(::PlexRubySDK::Operations::IncludeGuids), include_meta: T.nilable(::PlexRubySDK::Operations::IncludeMeta), type: T.nilable(::PlexRubySDK::Operations::Type), x_plex_container_size: T.nilable(::Integer), x_plex_container_start: T.nilable(::Integer)).void }
      def initialize(section_key: nil, tag: nil, include_guids: nil, include_meta: nil, type: nil, x_plex_container_size: nil, x_plex_container_start: nil)
        @section_key = section_key
        @tag = tag
        @include_guids = include_guids
        @include_meta = include_meta
        @type = type
        @x_plex_container_size = x_plex_container_size
        @x_plex_container_start = x_plex_container_start
      end
    end
  end
end
