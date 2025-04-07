# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetLibraryItemsLibrarySort < ::Crystalline::FieldAugmented
      extend T::Sig

      # The direction of the sort. Can be either `asc` or `desc`.
      # 
      field :default_direction, ::PlexRubySDK::Operations::GetLibraryItemsLibraryDefaultDirection, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('defaultDirection'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::GetLibraryItemsLibraryDefaultDirection, false) } }

      field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

      field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('active') } }
      # The direction of the sort. Can be either `asc` or `desc`.
      # 
      field :active_direction, T.nilable(::PlexRubySDK::Operations::GetLibraryItemsLibraryActiveDirection), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('activeDirection'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::GetLibraryItemsLibraryActiveDirection, true) } }

      field :default, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('default') } }

      field :desc_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('descKey') } }

      field :first_character_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('firstCharacterKey') } }


      sig { params(default_direction: ::PlexRubySDK::Operations::GetLibraryItemsLibraryDefaultDirection, key: ::String, title: ::String, active: T.nilable(T::Boolean), active_direction: T.nilable(::PlexRubySDK::Operations::GetLibraryItemsLibraryActiveDirection), default: T.nilable(::String), desc_key: T.nilable(::String), first_character_key: T.nilable(::String)).void }
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

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @default_direction == other.default_direction
        return false unless @key == other.key
        return false unless @title == other.title
        return false unless @active == other.active
        return false unless @active_direction == other.active_direction
        return false unless @default == other.default
        return false unless @desc_key == other.desc_key
        return false unless @first_character_key == other.first_character_key
        true
      end
    end
  end
end
