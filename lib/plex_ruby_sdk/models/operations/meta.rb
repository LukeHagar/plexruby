# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
    # 
    class Meta < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :field_type, T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryItemsFieldType]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('FieldType') } }

      field :type, T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryItemsType]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Type') } }


      sig { params(field_type: T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryItemsFieldType]), type: T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryItemsType])).void }
      def initialize(field_type: nil, type: nil)
        @field_type = field_type
        @type = type
      end
    end
  end
end
