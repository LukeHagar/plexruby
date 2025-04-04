# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetSearchAllLibrariesRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # An opaque identifier unique to the client (UUID, serial number, or other unique device ID)
      field :client_id, ::String, { 'header': { 'field_name': 'X-Plex-Client-Identifier', 'style': 'simple', 'explode': false } }
      # The search query term.
      field :query, ::String, { 'query_param': { 'field_name': 'query', 'style': 'form', 'explode': true } }
      # Whether to include collections in the search results.
      field :include_collections, T.nilable(::PlexRubySDK::Operations::GetSearchAllLibrariesQueryParamIncludeCollections), { 'query_param': { 'field_name': 'includeCollections', 'style': 'form', 'explode': true } }
      # Whether to include external media in the search results.
      field :include_external_media, T.nilable(::PlexRubySDK::Operations::GetSearchAllLibrariesQueryParamIncludeExternalMedia), { 'query_param': { 'field_name': 'includeExternalMedia', 'style': 'form', 'explode': true } }
      # Limit the number of results returned.
      field :limit, T.nilable(::Integer), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }
      # A comma-separated list of search types to include. Valid values are: movies, music, otherVideos, people, tv.
      # 
      field :search_types, T.nilable(T::Array[::PlexRubySDK::Operations::SearchTypes]), { 'query_param': { 'field_name': 'searchTypes', 'style': 'form', 'explode': false } }


      sig { params(client_id: ::String, query: ::String, include_collections: T.nilable(::PlexRubySDK::Operations::GetSearchAllLibrariesQueryParamIncludeCollections), include_external_media: T.nilable(::PlexRubySDK::Operations::GetSearchAllLibrariesQueryParamIncludeExternalMedia), limit: T.nilable(::Integer), search_types: T.nilable(T::Array[::PlexRubySDK::Operations::SearchTypes])).void }
      def initialize(client_id: nil, query: nil, include_collections: nil, include_external_media: nil, limit: nil, search_types: nil)
        @client_id = client_id
        @query = query
        @include_collections = include_collections
        @include_external_media = include_external_media
        @limit = limit
        @search_types = search_types
      end
    end
  end
end
