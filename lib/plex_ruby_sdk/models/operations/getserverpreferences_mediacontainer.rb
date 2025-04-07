# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetServerPreferencesMediaContainer < ::Crystalline::FieldAugmented
      extend T::Sig


      field :setting, T.nilable(T::Array[::PlexRubySDK::Operations::Setting]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Setting') } }

      field :size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }


      sig { params(setting: T.nilable(T::Array[::PlexRubySDK::Operations::Setting]), size: T.nilable(::Integer)).void }
      def initialize(setting: nil, size: nil)
        @setting = setting
        @size = size
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @setting == other.setting
        return false unless @size == other.size
        true
      end
    end
  end
end
