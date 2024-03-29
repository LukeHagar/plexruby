# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CheckForUpdatesRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Indicate that you want to start download any updates found.
      field :download, T.nilable(::OpenApiSDK::Operations::Download), { 'query_param': { 'field_name': 'download', 'style': 'form', 'explode': true } }


      sig { params(download: T.nilable(::OpenApiSDK::Operations::Download)).void }
      def initialize(download: nil)
        @download = download
      end
    end
  end
end
