# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetSearchResultsMetadata < ::Crystalline::FieldAugmented
      extend T::Sig


      field :added_at, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('addedAt') } }

      field :allow_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowSync') } }

      field :art, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('art') } }

      field :audience_rating, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audienceRating') } }

      field :audience_rating_image, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audienceRatingImage') } }

      field :chapter_source, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('chapterSource') } }

      field :content_rating, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('contentRating') } }

      field :country, T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsCountry]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Country') } }

      field :director, T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsDirector]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Director') } }

      field :duration, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('duration') } }

      field :genre, T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsGenre]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Genre') } }

      field :guid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('guid') } }

      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :library_section_id, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionID') } }

      field :library_section_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionTitle') } }

      field :library_section_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionUUID') } }

      field :media, T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsMedia]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Media') } }

      field :originally_available_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('originallyAvailableAt'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :personal, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('personal') } }

      field :primary_extra_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('primaryExtraKey') } }

      field :rating, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('rating') } }

      field :rating_image, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ratingImage') } }

      field :rating_key, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ratingKey') } }

      field :role, T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsRole]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Role') } }

      field :source_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('sourceTitle') } }

      field :studio, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('studio') } }

      field :summary, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('summary') } }

      field :tagline, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('tagline') } }

      field :thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }

      field :updated_at, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('updatedAt') } }

      field :writer, T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsWriter]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Writer') } }

      field :year, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('year') } }


      sig { params(added_at: T.nilable(::Float), allow_sync: T.nilable(T::Boolean), art: T.nilable(::String), audience_rating: T.nilable(::Float), audience_rating_image: T.nilable(::String), chapter_source: T.nilable(::String), content_rating: T.nilable(::String), country: T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsCountry]), director: T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsDirector]), duration: T.nilable(::Float), genre: T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsGenre]), guid: T.nilable(::String), key: T.nilable(::String), library_section_id: T.nilable(::Float), library_section_title: T.nilable(::String), library_section_uuid: T.nilable(::String), media: T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsMedia]), originally_available_at: T.nilable(::DateTime), personal: T.nilable(T::Boolean), primary_extra_key: T.nilable(::String), rating: T.nilable(::Float), rating_image: T.nilable(::String), rating_key: T.nilable(::Float), role: T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsRole]), source_title: T.nilable(::String), studio: T.nilable(::String), summary: T.nilable(::String), tagline: T.nilable(::String), thumb: T.nilable(::String), title: T.nilable(::String), type: T.nilable(::String), updated_at: T.nilable(::Float), writer: T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsWriter]), year: T.nilable(::Float)).void }
      def initialize(added_at: nil, allow_sync: nil, art: nil, audience_rating: nil, audience_rating_image: nil, chapter_source: nil, content_rating: nil, country: nil, director: nil, duration: nil, genre: nil, guid: nil, key: nil, library_section_id: nil, library_section_title: nil, library_section_uuid: nil, media: nil, originally_available_at: nil, personal: nil, primary_extra_key: nil, rating: nil, rating_image: nil, rating_key: nil, role: nil, source_title: nil, studio: nil, summary: nil, tagline: nil, thumb: nil, title: nil, type: nil, updated_at: nil, writer: nil, year: nil)
        @added_at = added_at
        @allow_sync = allow_sync
        @art = art
        @audience_rating = audience_rating
        @audience_rating_image = audience_rating_image
        @chapter_source = chapter_source
        @content_rating = content_rating
        @country = country
        @director = director
        @duration = duration
        @genre = genre
        @guid = guid
        @key = key
        @library_section_id = library_section_id
        @library_section_title = library_section_title
        @library_section_uuid = library_section_uuid
        @media = media
        @originally_available_at = originally_available_at
        @personal = personal
        @primary_extra_key = primary_extra_key
        @rating = rating
        @rating_image = rating_image
        @rating_key = rating_key
        @role = role
        @source_title = source_title
        @studio = studio
        @summary = summary
        @tagline = tagline
        @thumb = thumb
        @title = title
        @type = type
        @updated_at = updated_at
        @writer = writer
        @year = year
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @added_at == other.added_at
        return false unless @allow_sync == other.allow_sync
        return false unless @art == other.art
        return false unless @audience_rating == other.audience_rating
        return false unless @audience_rating_image == other.audience_rating_image
        return false unless @chapter_source == other.chapter_source
        return false unless @content_rating == other.content_rating
        return false unless @country == other.country
        return false unless @director == other.director
        return false unless @duration == other.duration
        return false unless @genre == other.genre
        return false unless @guid == other.guid
        return false unless @key == other.key
        return false unless @library_section_id == other.library_section_id
        return false unless @library_section_title == other.library_section_title
        return false unless @library_section_uuid == other.library_section_uuid
        return false unless @media == other.media
        return false unless @originally_available_at == other.originally_available_at
        return false unless @personal == other.personal
        return false unless @primary_extra_key == other.primary_extra_key
        return false unless @rating == other.rating
        return false unless @rating_image == other.rating_image
        return false unless @rating_key == other.rating_key
        return false unless @role == other.role
        return false unless @source_title == other.source_title
        return false unless @studio == other.studio
        return false unless @summary == other.summary
        return false unless @tagline == other.tagline
        return false unless @thumb == other.thumb
        return false unless @title == other.title
        return false unless @type == other.type
        return false unless @updated_at == other.updated_at
        return false unless @writer == other.writer
        return false unless @year == other.year
        true
      end
    end
  end
end
