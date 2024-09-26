# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetRecentlyAddedFilter < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :filter, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('filter') } }

      field :filter_type, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('filterType') } }

      field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

      field :type, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }


      sig { params(filter: ::String, filter_type: ::String, key: ::String, title: ::String, type: ::String).void }
      def initialize(filter: nil, filter_type: nil, key: nil, title: nil, type: nil)
        @filter = filter
        @filter_type = filter_type
        @key = key
        @title = title
        @type = type
      end
    end
  end
end
