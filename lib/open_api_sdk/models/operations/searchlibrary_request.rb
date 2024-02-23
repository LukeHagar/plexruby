# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class SearchLibraryRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # the Id of the library to query
      field :section_id, ::Integer, { 'path_param': { 'field_name': 'sectionId', 'style': 'simple', 'explode': false } }
      # Plex content type to search for
      field :type, ::OpenApiSDK::Operations::Type, { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }


      sig { params(section_id: ::Integer, type: ::OpenApiSDK::Operations::Type).void }
      def initialize(section_id: nil, type: nil)
        @section_id = section_id
        @type = type
      end
    end
  end
end
