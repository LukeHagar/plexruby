# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetAllLibrariesMediaContainer < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :allow_sync, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowSync') } }

      field :size, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }

      field :title1, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title1') } }

      field :directory, T.nilable(T::Array[::PlexRubySDK::Operations::GetAllLibrariesDirectory]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Directory') } }


      sig { params(allow_sync: T::Boolean, size: ::Integer, title1: ::String, directory: T.nilable(T::Array[::PlexRubySDK::Operations::GetAllLibrariesDirectory])).void }
      def initialize(allow_sync: nil, size: nil, title1: nil, directory: nil)
        @allow_sync = allow_sync
        @size = size
        @title1 = title1
        @directory = directory
      end
    end
  end
end
