# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetPlaylistsRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # limit to a type of playlist.
        field :playlist_type, T.nilable(Models::Operations::PlaylistType), { 'query_param': { 'field_name': 'playlistType', 'style': 'form', 'explode': true } }
        # type of playlists to return (default is all).
        field :smart, T.nilable(Models::Operations::QueryParamSmart), { 'query_param': { 'field_name': 'smart', 'style': 'form', 'explode': true } }


        sig { params(playlist_type: T.nilable(Models::Operations::PlaylistType), smart: T.nilable(Models::Operations::QueryParamSmart)).void }
        def initialize(playlist_type: nil, smart: nil)
          @playlist_type = playlist_type
          @smart = smart
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @playlist_type == other.playlist_type
          return false unless @smart == other.smart
          true
        end
      end
    end
  end
end
