# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class DeletePlaylistRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # the ID of the playlist
      field :playlist_id, ::Float, { 'path_param': { 'field_name': 'playlistID', 'style': 'simple', 'explode': false } }


      sig { params(playlist_id: ::Float).void }
      def initialize(playlist_id: nil)
        @playlist_id = playlist_id
      end
    end
  end
end
