# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
      GET_WATCH_LIST_REQUEST_SERVERS = [
        'https://metadata.provider.plex.tv'
      ].freeze
    

      class GetWatchListRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # Filter
        field :filter, Models::Operations::Filter, { 'path_param': { 'field_name': 'filter', 'style': 'simple', 'explode': false } }
        # An authentication token, obtained from plex.tv
        field :x_plex_token, ::String, { 'header': { 'field_name': 'X-Plex-Token', 'style': 'simple', 'explode': false } }
        # include collections in the results
        # 
        field :include_collections, T.nilable(Models::Operations::IncludeCollections), { 'query_param': { 'field_name': 'includeCollections', 'style': 'form', 'explode': true } }
        # include external media in the results
        # 
        field :include_external_media, T.nilable(Models::Operations::IncludeExternalMedia), { 'query_param': { 'field_name': 'includeExternalMedia', 'style': 'form', 'explode': true } }
        # The type of library to filter. Can be "movie" or "show", or all if not present.
        # 
        field :libtype, T.nilable(Models::Operations::Libtype), { 'query_param': { 'field_name': 'libtype', 'style': 'form', 'explode': true } }
        # The number of items to return. If not specified, all items will be returned.
        # If the number of items exceeds the limit, the response will be paginated.
        # 
        field :maxresults, T.nilable(::Integer), { 'query_param': { 'field_name': 'maxresults', 'style': 'form', 'explode': true } }
        # In the format "field:dir". Available fields are "watchlistedAt" (Added At),
        # "titleSort" (Title), "originallyAvailableAt" (Release Date), or "rating" (Critic Rating).
        # "dir" can be "asc" or "desc"
        # 
        field :sort, T.nilable(::String), { 'query_param': { 'field_name': 'sort', 'style': 'form', 'explode': true } }
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


        sig { params(filter: Models::Operations::Filter, x_plex_token: ::String, include_collections: T.nilable(Models::Operations::IncludeCollections), include_external_media: T.nilable(Models::Operations::IncludeExternalMedia), libtype: T.nilable(Models::Operations::Libtype), maxresults: T.nilable(::Integer), sort: T.nilable(::String), x_plex_container_size: T.nilable(::Integer), x_plex_container_start: T.nilable(::Integer)).void }
        def initialize(filter: nil, x_plex_token: nil, include_collections: nil, include_external_media: nil, libtype: nil, maxresults: nil, sort: nil, x_plex_container_size: nil, x_plex_container_start: nil)
          @filter = filter
          @x_plex_token = x_plex_token
          @include_collections = include_collections
          @include_external_media = include_external_media
          @libtype = libtype
          @maxresults = maxresults
          @sort = sort
          @x_plex_container_size = x_plex_container_size
          @x_plex_container_start = x_plex_container_start
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @filter == other.filter
          return false unless @x_plex_token == other.x_plex_token
          return false unless @include_collections == other.include_collections
          return false unless @include_external_media == other.include_external_media
          return false unless @libtype == other.libtype
          return false unless @maxresults == other.maxresults
          return false unless @sort == other.sort
          return false unless @x_plex_container_size == other.x_plex_container_size
          return false unless @x_plex_container_start == other.x_plex_container_start
          true
        end
      end
    end
  end
end
