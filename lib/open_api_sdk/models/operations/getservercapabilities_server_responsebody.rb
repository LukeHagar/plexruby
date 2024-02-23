# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    class GetServerCapabilitiesServerResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[::OpenApiSDK::Operations::Errors]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[::OpenApiSDK::Operations::Errors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end
  end
end
