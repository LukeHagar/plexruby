# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class MediaProvider < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :feature, T.nilable(T::Array[::PlexRubySDK::Operations::Feature]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Feature') } }

      field :identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('identifier') } }

      field :protocols, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('protocols') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

      field :types, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('types') } }


      sig { params(feature: T.nilable(T::Array[::PlexRubySDK::Operations::Feature]), identifier: T.nilable(::String), protocols: T.nilable(::String), title: T.nilable(::String), types: T.nilable(::String)).void }
      def initialize(feature: nil, identifier: nil, protocols: nil, title: nil, types: nil)
        @feature = feature
        @identifier = identifier
        @protocols = protocols
        @title = title
        @types = types
      end
    end
  end
end