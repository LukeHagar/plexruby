# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class AddPlaylistContentsMediaContainer < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :leaf_count_added, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('leafCountAdded') } }

      field :leaf_count_requested, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('leafCountRequested') } }

      field :metadata, T.nilable(T::Array[::OpenApiSDK::Operations::AddPlaylistContentsMetadata]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Metadata') } }

      field :size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('size') } }


      sig { params(leaf_count_added: T.nilable(::Integer), leaf_count_requested: T.nilable(::Integer), metadata: T.nilable(T::Array[::OpenApiSDK::Operations::AddPlaylistContentsMetadata]), size: T.nilable(::Integer)).void }
      def initialize(leaf_count_added: nil, leaf_count_requested: nil, metadata: nil, size: nil)
        @leaf_count_added = leaf_count_added
        @leaf_count_requested = leaf_count_requested
        @metadata = metadata
        @size = size
      end
    end
  end
end
