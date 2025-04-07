# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetLibraryDetailsType < ::Crystalline::FieldAugmented
      extend T::Sig


      field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('active') } }

      field :field, T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryDetailsField]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Field') } }

      field :filter, T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryDetailsFilter]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Filter') } }

      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :sort, T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryDetailsSort]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Sort') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }


      sig { params(active: T.nilable(T::Boolean), field: T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryDetailsField]), filter: T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryDetailsFilter]), key: T.nilable(::String), sort: T.nilable(T::Array[::PlexRubySDK::Operations::GetLibraryDetailsSort]), title: T.nilable(::String), type: T.nilable(::String)).void }
      def initialize(active: nil, field: nil, filter: nil, key: nil, sort: nil, title: nil, type: nil)
        @active = active
        @field = field
        @filter = filter
        @key = key
        @sort = sort
        @title = title
        @type = type
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @active == other.active
        return false unless @field == other.field
        return false unless @filter == other.filter
        return false unless @key == other.key
        return false unless @sort == other.sort
        return false unless @title == other.title
        return false unless @type == other.type
        true
      end
    end
  end
end
