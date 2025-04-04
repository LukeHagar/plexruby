# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # Bad Request - A parameter was not specified, or was specified incorrectly.
    class GetMetadataChildrenBadRequest < ::Crystalline::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[::PlexRubySDK::Operations::GetMetadataChildrenErrors]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[::PlexRubySDK::Operations::GetMetadataChildrenErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end
  end
end
