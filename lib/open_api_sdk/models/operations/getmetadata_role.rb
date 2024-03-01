# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetMetadataRole < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :filter, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('filter') } }

      field :id, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :role, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('role') } }

      field :tag, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tag') } }

      field :tag_key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tagKey') } }

      field :thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('thumb') } }


      sig { params(filter: T.nilable(::String), id: T.nilable(::Integer), role: T.nilable(::String), tag: T.nilable(::String), tag_key: T.nilable(::String), thumb: T.nilable(::String)).void }
      def initialize(filter: nil, id: nil, role: nil, tag: nil, tag_key: nil, thumb: nil)
        @filter = filter
        @id = id
        @role = role
        @tag = tag
        @tag_key = tag_key
        @thumb = thumb
      end
    end
  end
end
