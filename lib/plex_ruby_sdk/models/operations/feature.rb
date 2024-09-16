# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class Feature < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :directory, T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaProvidersDirectory]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Directory') } }

      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }


      sig { params(directory: T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaProvidersDirectory]), key: T.nilable(::String), type: T.nilable(::String)).void }
      def initialize(directory: nil, key: nil, type: nil)
        @directory = directory
        @key = key
        @type = type
      end
    end
  end
end
