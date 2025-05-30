# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetSearchLibraryMetadata
        extend T::Sig
        include Crystalline::MetadataFields


        field :added_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('addedAt') } }

        field :art, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('art') } }

        field :guid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('guid') } }

        field :index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('index') } }

        field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

        field :parent_guid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentGuid') } }

        field :parent_index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentIndex') } }

        field :parent_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentKey') } }

        field :parent_rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentRatingKey') } }

        field :parent_studio, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentStudio') } }

        field :parent_theme, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentTheme') } }

        field :parent_thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentThumb') } }

        field :parent_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentTitle') } }

        field :parent_year, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentYear') } }

        field :rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ratingKey') } }

        field :summary, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('summary') } }

        field :thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }

        field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

        field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }

        field :updated_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('updatedAt') } }


        sig { params(added_at: T.nilable(::Integer), art: T.nilable(::String), guid: T.nilable(::String), index: T.nilable(::Integer), key: T.nilable(::String), parent_guid: T.nilable(::String), parent_index: T.nilable(::Integer), parent_key: T.nilable(::String), parent_rating_key: T.nilable(::String), parent_studio: T.nilable(::String), parent_theme: T.nilable(::String), parent_thumb: T.nilable(::String), parent_title: T.nilable(::String), parent_year: T.nilable(::Integer), rating_key: T.nilable(::String), summary: T.nilable(::String), thumb: T.nilable(::String), title: T.nilable(::String), type: T.nilable(::String), updated_at: T.nilable(::Integer)).void }
        def initialize(added_at: nil, art: nil, guid: nil, index: nil, key: nil, parent_guid: nil, parent_index: nil, parent_key: nil, parent_rating_key: nil, parent_studio: nil, parent_theme: nil, parent_thumb: nil, parent_title: nil, parent_year: nil, rating_key: nil, summary: nil, thumb: nil, title: nil, type: nil, updated_at: nil)
          @added_at = added_at
          @art = art
          @guid = guid
          @index = index
          @key = key
          @parent_guid = parent_guid
          @parent_index = parent_index
          @parent_key = parent_key
          @parent_rating_key = parent_rating_key
          @parent_studio = parent_studio
          @parent_theme = parent_theme
          @parent_thumb = parent_thumb
          @parent_title = parent_title
          @parent_year = parent_year
          @rating_key = rating_key
          @summary = summary
          @thumb = thumb
          @title = title
          @type = type
          @updated_at = updated_at
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @added_at == other.added_at
          return false unless @art == other.art
          return false unless @guid == other.guid
          return false unless @index == other.index
          return false unless @key == other.key
          return false unless @parent_guid == other.parent_guid
          return false unless @parent_index == other.parent_index
          return false unless @parent_key == other.parent_key
          return false unless @parent_rating_key == other.parent_rating_key
          return false unless @parent_studio == other.parent_studio
          return false unless @parent_theme == other.parent_theme
          return false unless @parent_thumb == other.parent_thumb
          return false unless @parent_title == other.parent_title
          return false unless @parent_year == other.parent_year
          return false unless @rating_key == other.rating_key
          return false unless @summary == other.summary
          return false unless @thumb == other.thumb
          return false unless @title == other.title
          return false unless @type == other.type
          return false unless @updated_at == other.updated_at
          true
        end
      end
    end
  end
end
