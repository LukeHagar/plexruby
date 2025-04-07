# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetSessionsMetadata < ::Crystalline::FieldAugmented
      extend T::Sig


      field :added_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('addedAt') } }

      field :art, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('art') } }

      field :duration, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('duration') } }

      field :grandparent_art, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentArt') } }

      field :grandparent_guid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentGuid') } }

      field :grandparent_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentKey') } }

      field :grandparent_rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentRatingKey') } }

      field :grandparent_thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentThumb') } }

      field :grandparent_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentTitle') } }

      field :guid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('guid') } }

      field :index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('index') } }

      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :library_section_id, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionID') } }

      field :library_section_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionKey') } }

      field :library_section_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionTitle') } }

      field :media, T.nilable(T::Array[::PlexRubySDK::Operations::GetSessionsMedia]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Media') } }

      field :music_analysis_version, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('musicAnalysisVersion') } }
      # The original untranslated name of the media item when non-english, or the track artist if an audio Item has an album artist
      field :original_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('originalTitle') } }

      field :parent_guid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentGuid') } }

      field :parent_index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentIndex') } }

      field :parent_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentKey') } }

      field :parent_rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentRatingKey') } }

      field :parent_studio, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentStudio') } }

      field :parent_thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentThumb') } }

      field :parent_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentTitle') } }

      field :parent_year, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentYear') } }

      field :player, T.nilable(::PlexRubySDK::Operations::Player), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Player') } }

      field :rating_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ratingCount') } }

      field :rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ratingKey') } }

      field :session, T.nilable(::PlexRubySDK::Operations::Session), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Session') } }

      field :session_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('sessionKey') } }

      field :thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

      field :title_sort, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('titleSort') } }

      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }

      field :updated_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('updatedAt') } }

      field :user, T.nilable(::PlexRubySDK::Operations::GetSessionsUser), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('User') } }

      field :view_offset, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewOffset') } }


      sig { params(added_at: T.nilable(::Integer), art: T.nilable(::String), duration: T.nilable(::Integer), grandparent_art: T.nilable(::String), grandparent_guid: T.nilable(::String), grandparent_key: T.nilable(::String), grandparent_rating_key: T.nilable(::String), grandparent_thumb: T.nilable(::String), grandparent_title: T.nilable(::String), guid: T.nilable(::String), index: T.nilable(::Integer), key: T.nilable(::String), library_section_id: T.nilable(::String), library_section_key: T.nilable(::String), library_section_title: T.nilable(::String), media: T.nilable(T::Array[::PlexRubySDK::Operations::GetSessionsMedia]), music_analysis_version: T.nilable(::String), original_title: T.nilable(::String), parent_guid: T.nilable(::String), parent_index: T.nilable(::Integer), parent_key: T.nilable(::String), parent_rating_key: T.nilable(::String), parent_studio: T.nilable(::String), parent_thumb: T.nilable(::String), parent_title: T.nilable(::String), parent_year: T.nilable(::Integer), player: T.nilable(::PlexRubySDK::Operations::Player), rating_count: T.nilable(::Integer), rating_key: T.nilable(::String), session: T.nilable(::PlexRubySDK::Operations::Session), session_key: T.nilable(::String), thumb: T.nilable(::String), title: T.nilable(::String), title_sort: T.nilable(::String), type: T.nilable(::String), updated_at: T.nilable(::Integer), user: T.nilable(::PlexRubySDK::Operations::GetSessionsUser), view_offset: T.nilable(::Integer)).void }
      def initialize(added_at: nil, art: nil, duration: nil, grandparent_art: nil, grandparent_guid: nil, grandparent_key: nil, grandparent_rating_key: nil, grandparent_thumb: nil, grandparent_title: nil, guid: nil, index: nil, key: nil, library_section_id: nil, library_section_key: nil, library_section_title: nil, media: nil, music_analysis_version: nil, original_title: nil, parent_guid: nil, parent_index: nil, parent_key: nil, parent_rating_key: nil, parent_studio: nil, parent_thumb: nil, parent_title: nil, parent_year: nil, player: nil, rating_count: nil, rating_key: nil, session: nil, session_key: nil, thumb: nil, title: nil, title_sort: nil, type: nil, updated_at: nil, user: nil, view_offset: nil)
        @added_at = added_at
        @art = art
        @duration = duration
        @grandparent_art = grandparent_art
        @grandparent_guid = grandparent_guid
        @grandparent_key = grandparent_key
        @grandparent_rating_key = grandparent_rating_key
        @grandparent_thumb = grandparent_thumb
        @grandparent_title = grandparent_title
        @guid = guid
        @index = index
        @key = key
        @library_section_id = library_section_id
        @library_section_key = library_section_key
        @library_section_title = library_section_title
        @media = media
        @music_analysis_version = music_analysis_version
        @original_title = original_title
        @parent_guid = parent_guid
        @parent_index = parent_index
        @parent_key = parent_key
        @parent_rating_key = parent_rating_key
        @parent_studio = parent_studio
        @parent_thumb = parent_thumb
        @parent_title = parent_title
        @parent_year = parent_year
        @player = player
        @rating_count = rating_count
        @rating_key = rating_key
        @session = session
        @session_key = session_key
        @thumb = thumb
        @title = title
        @title_sort = title_sort
        @type = type
        @updated_at = updated_at
        @user = user
        @view_offset = view_offset
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @added_at == other.added_at
        return false unless @art == other.art
        return false unless @duration == other.duration
        return false unless @grandparent_art == other.grandparent_art
        return false unless @grandparent_guid == other.grandparent_guid
        return false unless @grandparent_key == other.grandparent_key
        return false unless @grandparent_rating_key == other.grandparent_rating_key
        return false unless @grandparent_thumb == other.grandparent_thumb
        return false unless @grandparent_title == other.grandparent_title
        return false unless @guid == other.guid
        return false unless @index == other.index
        return false unless @key == other.key
        return false unless @library_section_id == other.library_section_id
        return false unless @library_section_key == other.library_section_key
        return false unless @library_section_title == other.library_section_title
        return false unless @media == other.media
        return false unless @music_analysis_version == other.music_analysis_version
        return false unless @original_title == other.original_title
        return false unless @parent_guid == other.parent_guid
        return false unless @parent_index == other.parent_index
        return false unless @parent_key == other.parent_key
        return false unless @parent_rating_key == other.parent_rating_key
        return false unless @parent_studio == other.parent_studio
        return false unless @parent_thumb == other.parent_thumb
        return false unless @parent_title == other.parent_title
        return false unless @parent_year == other.parent_year
        return false unless @player == other.player
        return false unless @rating_count == other.rating_count
        return false unless @rating_key == other.rating_key
        return false unless @session == other.session
        return false unless @session_key == other.session_key
        return false unless @thumb == other.thumb
        return false unless @title == other.title
        return false unless @title_sort == other.title_sort
        return false unless @type == other.type
        return false unless @updated_at == other.updated_at
        return false unless @user == other.user
        return false unless @view_offset == other.view_offset
        true
      end
    end
  end
end
