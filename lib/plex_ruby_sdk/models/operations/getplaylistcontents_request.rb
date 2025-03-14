# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetPlaylistContentsRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # the ID of the playlist
      field :playlist_id, ::Float, { 'path_param': { 'field_name': 'playlistID', 'style': 'simple', 'explode': false } }
      # The type of media to retrieve or filter by.
      # 1 = movie
      # 2 = show
      # 3 = season
      # 4 = episode
      # E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries
      # 
      field :type, ::PlexRubySDK::Operations::GetPlaylistContentsQueryParamType, { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }


      sig { params(playlist_id: ::Float, type: ::PlexRubySDK::Operations::GetPlaylistContentsQueryParamType).void }
      def initialize(playlist_id: nil, type: nil)
        @playlist_id = playlist_id
        @type = type
      end
    end
  end
end
