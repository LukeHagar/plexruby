# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class Genre < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :tag, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tag') } }


      sig { params(tag: T.nilable(::String)).void }
      def initialize(tag: nil)
        @tag = tag
      end
    end
  end
end
