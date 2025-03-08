# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class UpdatePlaylistRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # the ID of the playlist
      field :playlist_id, ::Float, { 'path_param': { 'field_name': 'playlistID', 'style': 'simple', 'explode': false } }
      # summary description of the playlist
      field :summary, T.nilable(::String), { 'query_param': { 'field_name': 'summary', 'style': 'form', 'explode': true } }
      # name of the playlist
      field :title, T.nilable(::String), { 'query_param': { 'field_name': 'title', 'style': 'form', 'explode': true } }


      sig { params(playlist_id: ::Float, summary: T.nilable(::String), title: T.nilable(::String)).void }
      def initialize(playlist_id: nil, summary: nil, title: nil)
        @playlist_id = playlist_id
        @summary = summary
        @title = title
      end
    end
  end
end
