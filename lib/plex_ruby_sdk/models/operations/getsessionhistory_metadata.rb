# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetSessionHistoryMetadata < ::Crystalline::FieldAugmented
      extend T::Sig


      field :account_id, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('accountID') } }

      field :device_id, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('deviceID') } }

      field :grandparent_art, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentArt') } }

      field :grandparent_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentKey') } }

      field :grandparent_thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentThumb') } }

      field :grandparent_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentTitle') } }

      field :history_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('historyKey') } }

      field :index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('index') } }

      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :library_section_id, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionID') } }

      field :originally_available_at, T.nilable(::Date), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('originallyAvailableAt'), 'decoder': Utils.date_from_iso_format(true) } }

      field :parent_index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentIndex') } }

      field :parent_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentKey') } }

      field :parent_thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentThumb') } }

      field :rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ratingKey') } }

      field :thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }

      field :viewed_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewedAt') } }


      sig { params(account_id: T.nilable(::Integer), device_id: T.nilable(::Integer), grandparent_art: T.nilable(::String), grandparent_key: T.nilable(::String), grandparent_thumb: T.nilable(::String), grandparent_title: T.nilable(::String), history_key: T.nilable(::String), index: T.nilable(::Integer), key: T.nilable(::String), library_section_id: T.nilable(::String), originally_available_at: T.nilable(::Date), parent_index: T.nilable(::Integer), parent_key: T.nilable(::String), parent_thumb: T.nilable(::String), rating_key: T.nilable(::String), thumb: T.nilable(::String), title: T.nilable(::String), type: T.nilable(::String), viewed_at: T.nilable(::Integer)).void }
      def initialize(account_id: nil, device_id: nil, grandparent_art: nil, grandparent_key: nil, grandparent_thumb: nil, grandparent_title: nil, history_key: nil, index: nil, key: nil, library_section_id: nil, originally_available_at: nil, parent_index: nil, parent_key: nil, parent_thumb: nil, rating_key: nil, thumb: nil, title: nil, type: nil, viewed_at: nil)
        @account_id = account_id
        @device_id = device_id
        @grandparent_art = grandparent_art
        @grandparent_key = grandparent_key
        @grandparent_thumb = grandparent_thumb
        @grandparent_title = grandparent_title
        @history_key = history_key
        @index = index
        @key = key
        @library_section_id = library_section_id
        @originally_available_at = originally_available_at
        @parent_index = parent_index
        @parent_key = parent_key
        @parent_thumb = parent_thumb
        @rating_key = rating_key
        @thumb = thumb
        @title = title
        @type = type
        @viewed_at = viewed_at
      end
    end
  end
end
