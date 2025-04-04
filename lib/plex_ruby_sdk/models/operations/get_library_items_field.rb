# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetLibraryItemsField < ::Crystalline::FieldAugmented
      extend T::Sig


      field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

      field :type, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }

      field :sub_type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('subType') } }


      sig { params(key: ::String, title: ::String, type: ::String, sub_type: T.nilable(::String)).void }
      def initialize(key: nil, title: nil, type: nil, sub_type: nil)
        @key = key
        @title = title
        @type = type
        @sub_type = sub_type
      end
    end
  end
end
