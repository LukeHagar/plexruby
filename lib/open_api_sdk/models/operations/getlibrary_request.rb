# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetLibraryRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # the Id of the library to query
      field :section_id, ::Float, { 'path_param': { 'field_name': 'sectionId', 'style': 'simple', 'explode': false } }
      # Whether or not to include details for a section (types, filters, and sorts). 
      # Only exists for backwards compatibility, media providers other than the server libraries have it on always.
      # 
      field :include_details, T.nilable(::OpenApiSDK::Operations::IncludeDetails), { 'query_param': { 'field_name': 'includeDetails', 'style': 'form', 'explode': true } }


      sig { params(section_id: ::Float, include_details: T.nilable(::OpenApiSDK::Operations::IncludeDetails)).void }
      def initialize(section_id: nil, include_details: nil)
        @section_id = section_id
        @include_details = include_details
      end
    end
  end
end
