# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetRecentlyAddedLibraryType < ::Crystalline::FieldAugmented
      extend T::Sig


      field :active, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('active') } }

      field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

      field :type, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }

      field :field, T.nilable(T::Array[::PlexRubySDK::Operations::Field]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Field') } }

      field :filter, T.nilable(T::Array[::PlexRubySDK::Operations::GetRecentlyAddedLibraryFilter]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Filter') } }

      field :sort, T.nilable(T::Array[::PlexRubySDK::Operations::Sort]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Sort') } }

      field :subtype, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('subtype') } }


      sig { params(active: T::Boolean, key: ::String, title: ::String, type: ::String, field: T.nilable(T::Array[::PlexRubySDK::Operations::Field]), filter: T.nilable(T::Array[::PlexRubySDK::Operations::GetRecentlyAddedLibraryFilter]), sort: T.nilable(T::Array[::PlexRubySDK::Operations::Sort]), subtype: T.nilable(::String)).void }
      def initialize(active: nil, key: nil, title: nil, type: nil, field: nil, filter: nil, sort: nil, subtype: nil)
        @active = active
        @key = key
        @title = title
        @type = type
        @field = field
        @filter = filter
        @sort = sort
        @subtype = subtype
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @active == other.active
        return false unless @key == other.key
        return false unless @title == other.title
        return false unless @type == other.type
        return false unless @field == other.field
        return false unless @filter == other.filter
        return false unless @sort == other.sort
        return false unless @subtype == other.subtype
        true
      end
    end
  end
end
