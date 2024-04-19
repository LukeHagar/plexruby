# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class Field < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }

      field :sub_type, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('subType') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title') } }

      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type') } }


      sig { params(key: T.nilable(::String), sub_type: T.nilable(::String), title: T.nilable(::String), type: T.nilable(::String)).void }
      def initialize(key: nil, sub_type: nil, title: nil, type: nil)
        @key = key
        @sub_type = sub_type
        @title = title
        @type = type
      end
    end
  end
end