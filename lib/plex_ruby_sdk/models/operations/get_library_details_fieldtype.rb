# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetLibraryDetailsFieldType < ::Crystalline::FieldAugmented
      extend T::Sig


      field :operator, T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryDetailsOperator]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Operator') } }

      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }


      sig { params(operator: T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryDetailsOperator]), type: T.nilable(::String)).void }
      def initialize(operator: nil, type: nil)
        @operator = operator
        @type = type
      end
    end
  end
end
