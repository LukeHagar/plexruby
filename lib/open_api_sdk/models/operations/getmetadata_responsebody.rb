# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # The metadata of the library item.
    class GetMetadataResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :media_container, T.nilable(::OpenApiSDK::Operations::GetMetadataMediaContainer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('MediaContainer') } }


      sig { params(media_container: T.nilable(::OpenApiSDK::Operations::GetMetadataMediaContainer)).void }
      def initialize(media_container: nil)
        @media_container = media_container
      end
    end
  end
end
