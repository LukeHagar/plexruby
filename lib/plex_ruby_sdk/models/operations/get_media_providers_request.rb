# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetMediaProvidersRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # An authentication token, obtained from plex.tv
      field :x_plex_token, ::String, { 'header': { 'field_name': 'X-Plex-Token', 'style': 'simple', 'explode': false } }


      sig { params(x_plex_token: ::String).void }
      def initialize(x_plex_token: nil)
        @x_plex_token = x_plex_token
      end
    end
  end
end
