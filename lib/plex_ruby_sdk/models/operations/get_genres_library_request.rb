# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetGenresLibraryRequest < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # The unique key of the Plex library. 
      # Note: This is unique in the context of the Plex server.
      # 
      field :section_key, ::Integer, { 'path_param': { 'field_name': 'sectionKey', 'style': 'simple', 'explode': false } }
      # The type of media to retrieve or filter by.
      # 1 = movie
      # 2 = show
      # 3 = season
      # 4 = episode
      # E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries
      # 
      field :type, ::PlexRubySDK::Operations::GetGenresLibraryQueryParamType, { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }


      sig { params(section_key: ::Integer, type: ::PlexRubySDK::Operations::GetGenresLibraryQueryParamType).void }
      def initialize(section_key: nil, type: nil)
        @section_key = section_key
        @type = type
      end
    end
  end
end
