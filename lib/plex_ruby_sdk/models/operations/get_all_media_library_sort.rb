# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetAllMediaLibrarySort < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # The direction of the sort. Can be either `asc` or `desc`.
      # 
      field :default_direction, ::PlexRubySDK::Operations::GetAllMediaLibraryDefaultDirection, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('defaultDirection'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::GetAllMediaLibraryDefaultDirection, false) } }

      field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

      field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('active') } }
      # The direction of the sort. Can be either `asc` or `desc`.
      # 
      field :active_direction, T.nilable(::PlexRubySDK::Operations::GetAllMediaLibraryActiveDirection), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('activeDirection'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::GetAllMediaLibraryActiveDirection, true) } }

      field :default, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('default') } }

      field :desc_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('descKey') } }

      field :first_character_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('firstCharacterKey') } }


      sig { params(default_direction: ::PlexRubySDK::Operations::GetAllMediaLibraryDefaultDirection, key: ::String, title: ::String, active: T.nilable(T::Boolean), active_direction: T.nilable(::PlexRubySDK::Operations::GetAllMediaLibraryActiveDirection), default: T.nilable(::String), desc_key: T.nilable(::String), first_character_key: T.nilable(::String)).void }
      def initialize(default_direction: nil, key: nil, title: nil, active: nil, active_direction: nil, default: nil, desc_key: nil, first_character_key: nil)
        @default_direction = default_direction
        @key = key
        @title = title
        @active = active
        @active_direction = active_direction
        @default = default
        @desc_key = desc_key
        @first_character_key = first_character_key
      end
    end
  end
end
