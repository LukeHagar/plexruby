# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetLibrariesMediaContainer < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :allow_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('allowSync') } }

      field :directory, T.nilable(T::Array[::OpenApiSDK::Operations::GetLibrariesDirectory]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Directory') } }

      field :size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('size') } }

      field :title1, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title1') } }


      sig { params(allow_sync: T.nilable(T::Boolean), directory: T.nilable(T::Array[::OpenApiSDK::Operations::GetLibrariesDirectory]), size: T.nilable(::Integer), title1: T.nilable(::String)).void }
      def initialize(allow_sync: nil, directory: nil, size: nil, title1: nil)
        @allow_sync = allow_sync
        @directory = directory
        @size = size
        @title1 = title1
      end
    end
  end
end
