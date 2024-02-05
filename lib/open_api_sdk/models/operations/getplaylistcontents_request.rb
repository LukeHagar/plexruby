# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetPlaylistContentsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # the ID of the playlist
      field :playlist_id, ::Float, { 'path_param': { 'field_name': 'playlistID', 'style': 'simple', 'explode': false } }
      # the metadata type of the item to return
      field :type, ::Float, { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }


      sig { params(playlist_id: ::Float, type: ::Float).void }
      def initialize(playlist_id: nil, type: nil)
        @playlist_id = playlist_id
        @type = type
      end
    end
  end
end
