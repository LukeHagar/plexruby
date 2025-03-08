# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetLibraryDetailsSort < ::Crystalline::FieldAugmented
      extend T::Sig


      field :default, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('default') } }

      field :default_direction, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('defaultDirection') } }

      field :desc_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('descKey') } }

      field :first_character_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('firstCharacterKey') } }

      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }


      sig { params(default: T.nilable(::String), default_direction: T.nilable(::String), desc_key: T.nilable(::String), first_character_key: T.nilable(::String), key: T.nilable(::String), title: T.nilable(::String)).void }
      def initialize(default: nil, default_direction: nil, desc_key: nil, first_character_key: nil, key: nil, title: nil)
        @default = default
        @default_direction = default_direction
        @desc_key = desc_key
        @first_character_key = first_character_key
        @key = key
        @title = title
      end
    end
  end
end
