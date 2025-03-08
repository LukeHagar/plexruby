# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetRecentlyAddedLibraryRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # The type of media to retrieve or filter by.
      # 1 = movie
      # 2 = show
      # 3 = season
      # 4 = episode
      # E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries
      # 
      field :type, ::PlexRubySDK::Operations::QueryParamType, { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }

      field :content_directory_id, T.nilable(::Integer), { 'query_param': { 'field_name': 'contentDirectoryID', 'style': 'form', 'explode': true } }
      # Adds the Meta object to the response
      # 
      field :include_meta, T.nilable(::PlexRubySDK::Operations::QueryParamIncludeMeta), { 'query_param': { 'field_name': 'includeMeta', 'style': 'form', 'explode': true } }

      field :pinned_content_directory_id, T.nilable(T::Array[::Integer]), { 'query_param': { 'field_name': 'pinnedContentDirectoryID', 'style': 'form', 'explode': true } }
      # The library section ID for filtering content.
      field :section_id, T.nilable(::Integer), { 'query_param': { 'field_name': 'sectionID', 'style': 'form', 'explode': true } }
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


      sig { params(type: ::PlexRubySDK::Operations::QueryParamType, content_directory_id: T.nilable(::Integer), include_meta: T.nilable(::PlexRubySDK::Operations::QueryParamIncludeMeta), pinned_content_directory_id: T.nilable(T::Array[::Integer]), section_id: T.nilable(::Integer), x_plex_container_size: T.nilable(::Integer), x_plex_container_start: T.nilable(::Integer)).void }
      def initialize(type: nil, content_directory_id: nil, include_meta: nil, pinned_content_directory_id: nil, section_id: nil, x_plex_container_size: nil, x_plex_container_start: nil)
        @type = type
        @content_directory_id = content_directory_id
        @include_meta = include_meta
        @pinned_content_directory_id = pinned_content_directory_id
        @section_id = section_id
        @x_plex_container_size = x_plex_container_size
        @x_plex_container_start = x_plex_container_start
      end
    end
  end
end
