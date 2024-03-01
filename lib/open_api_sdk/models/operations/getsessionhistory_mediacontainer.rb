# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetSessionHistoryMediaContainer < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :metadata, T.nilable(T::Array[::OpenApiSDK::Operations::GetSessionHistoryMetadata]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Metadata') } }

      field :size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('size') } }


      sig { params(metadata: T.nilable(T::Array[::OpenApiSDK::Operations::GetSessionHistoryMetadata]), size: T.nilable(::Integer)).void }
      def initialize(metadata: nil, size: nil)
        @metadata = metadata
        @size = size
      end
    end
  end
end
