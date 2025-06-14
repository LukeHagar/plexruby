# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetLibrarySectionsAllFieldType
        extend T::Sig
        include Crystalline::MetadataFields


        field :operator, T::Array[Models::Operations::GetLibrarySectionsAllOperator], { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Operator') } }

        field :type, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }


        sig { params(operator: T::Array[Models::Operations::GetLibrarySectionsAllOperator], type: ::String).void }
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
end
