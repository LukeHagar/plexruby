# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetLibraryItemsFieldType < ::Crystalline::FieldAugmented
      extend T::Sig


      field :operator, T::Array[::PlexRubySDK::Operations::GetLibraryItemsOperator], { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Operator') } }

      field :type, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }


      sig { params(operator: T::Array[::PlexRubySDK::Operations::GetLibraryItemsOperator], type: ::String).void }
      def initialize(operator: nil, type: nil)
        @operator = operator
        @type = type
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @operator == other.operator
        return false unless @type == other.type
        true
      end
    end
  end
end
