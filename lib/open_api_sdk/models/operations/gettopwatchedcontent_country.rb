# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetTopWatchedContentCountry < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :filter, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('filter') } }

      field :id, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :tag, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tag') } }


      sig { params(filter: T.nilable(::String), id: T.nilable(::Integer), tag: T.nilable(::String)).void }
      def initialize(filter: nil, id: nil, tag: nil)
        @filter = filter
        @id = id
        @tag = tag
      end
    end
  end
end