# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetMetadataChildrenDirectory < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }

      field :leaf_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('leafCount') } }

      field :thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('thumb') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title') } }

      field :viewed_leaf_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('viewedLeafCount') } }


      sig { params(key: T.nilable(::String), leaf_count: T.nilable(::Integer), thumb: T.nilable(::String), title: T.nilable(::String), viewed_leaf_count: T.nilable(::Integer)).void }
      def initialize(key: nil, leaf_count: nil, thumb: nil, title: nil, viewed_leaf_count: nil)
        @key = key
        @leaf_count = leaf_count
        @thumb = thumb
        @title = title
        @viewed_leaf_count = viewed_leaf_count
      end
    end
  end
end
