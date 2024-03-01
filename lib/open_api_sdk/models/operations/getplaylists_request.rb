# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetPlaylistsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # limit to a type of playlist.
      field :playlist_type, T.nilable(::OpenApiSDK::Operations::PlaylistType), { 'query_param': { 'field_name': 'playlistType', 'style': 'form', 'explode': true } }
      # type of playlists to return (default is all).
      field :smart, T.nilable(::OpenApiSDK::Operations::QueryParamSmart), { 'query_param': { 'field_name': 'smart', 'style': 'form', 'explode': true } }


      sig { params(playlist_type: T.nilable(::OpenApiSDK::Operations::PlaylistType), smart: T.nilable(::OpenApiSDK::Operations::QueryParamSmart)).void }
      def initialize(playlist_type: nil, smart: nil)
        @playlist_type = playlist_type
        @smart = smart
      end
    end
  end
end
