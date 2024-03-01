# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetLibraryItemsMetadata < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :added_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('addedAt') } }

      field :art, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('art') } }

      field :audience_rating, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('audienceRating') } }

      field :audience_rating_image, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('audienceRatingImage') } }

      field :chapter_source, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('chapterSource') } }

      field :child_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('childCount') } }

      field :content_rating, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('contentRating') } }

      field :country, T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsCountry]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Country') } }

      field :director, T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsDirector]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Director') } }

      field :duration, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('duration') } }

      field :genre, T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsGenre]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Genre') } }

      field :grandparent_art, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentArt') } }

      field :grandparent_guid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentGuid') } }

      field :grandparent_key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentKey') } }

      field :grandparent_rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentRatingKey') } }

      field :grandparent_theme, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentTheme') } }

      field :grandparent_thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentThumb') } }

      field :grandparent_title, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentTitle') } }

      field :guid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('guid') } }

      field :has_premium_extras, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('hasPremiumExtras') } }

      field :has_premium_primary_extra, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('hasPremiumPrimaryExtra') } }

      field :index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('index') } }

      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }

      field :last_viewed_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('lastViewedAt') } }

      field :leaf_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('leafCount') } }

      field :media, T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsMedia]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Media') } }

      field :originally_available_at, T.nilable(::Date), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('originallyAvailableAt'), 'decoder': Utils.date_from_iso_format(true) } }

      field :original_title, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('originalTitle') } }

      field :parent_guid, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentGuid') } }

      field :parent_index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentIndex') } }

      field :parent_key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentKey') } }

      field :parent_rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentRatingKey') } }

      field :parent_studio, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentStudio') } }

      field :parent_theme, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentTheme') } }

      field :parent_thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentThumb') } }

      field :parent_title, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentTitle') } }

      field :parent_year, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentYear') } }

      field :primary_extra_key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('primaryExtraKey') } }

      field :rating, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('rating') } }

      field :rating_image, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ratingImage') } }

      field :rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ratingKey') } }

      field :role, T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsRole]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Role') } }

      field :skip_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('skipCount') } }

      field :studio, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('studio') } }

      field :summary, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('summary') } }

      field :tagline, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tagline') } }

      field :theme, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('theme') } }

      field :thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('thumb') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title') } }

      field :title_sort, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('titleSort') } }

      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type') } }

      field :updated_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('updatedAt') } }

      field :view_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('viewCount') } }

      field :viewed_leaf_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('viewedLeafCount') } }

      field :view_offset, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('viewOffset') } }

      field :writer, T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsWriter]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Writer') } }

      field :year, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('year') } }


      sig { params(added_at: T.nilable(::Integer), art: T.nilable(::String), audience_rating: T.nilable(::Float), audience_rating_image: T.nilable(::String), chapter_source: T.nilable(::String), child_count: T.nilable(::Integer), content_rating: T.nilable(::String), country: T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsCountry]), director: T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsDirector]), duration: T.nilable(::Integer), genre: T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsGenre]), grandparent_art: T.nilable(::String), grandparent_guid: T.nilable(::String), grandparent_key: T.nilable(::String), grandparent_rating_key: T.nilable(::String), grandparent_theme: T.nilable(::String), grandparent_thumb: T.nilable(::String), grandparent_title: T.nilable(::String), guid: T.nilable(::String), has_premium_extras: T.nilable(::String), has_premium_primary_extra: T.nilable(::String), index: T.nilable(::Integer), key: T.nilable(::String), last_viewed_at: T.nilable(::Integer), leaf_count: T.nilable(::Integer), media: T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsMedia]), originally_available_at: T.nilable(::Date), original_title: T.nilable(::String), parent_guid: T.nilable(::String), parent_index: T.nilable(::Integer), parent_key: T.nilable(::String), parent_rating_key: T.nilable(::String), parent_studio: T.nilable(::String), parent_theme: T.nilable(::String), parent_thumb: T.nilable(::String), parent_title: T.nilable(::String), parent_year: T.nilable(::Integer), primary_extra_key: T.nilable(::String), rating: T.nilable(::Float), rating_image: T.nilable(::String), rating_key: T.nilable(::String), role: T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsRole]), skip_count: T.nilable(::Integer), studio: T.nilable(::String), summary: T.nilable(::String), tagline: T.nilable(::String), theme: T.nilable(::String), thumb: T.nilable(::String), title: T.nilable(::String), title_sort: T.nilable(::String), type: T.nilable(::String), updated_at: T.nilable(::Integer), view_count: T.nilable(::Integer), viewed_leaf_count: T.nilable(::Integer), view_offset: T.nilable(::Integer), writer: T.nilable(T::Array[::OpenApiSDK::Operations::GetLibraryItemsWriter]), year: T.nilable(::Integer)).void }
      def initialize(added_at: nil, art: nil, audience_rating: nil, audience_rating_image: nil, chapter_source: nil, child_count: nil, content_rating: nil, country: nil, director: nil, duration: nil, genre: nil, grandparent_art: nil, grandparent_guid: nil, grandparent_key: nil, grandparent_rating_key: nil, grandparent_theme: nil, grandparent_thumb: nil, grandparent_title: nil, guid: nil, has_premium_extras: nil, has_premium_primary_extra: nil, index: nil, key: nil, last_viewed_at: nil, leaf_count: nil, media: nil, originally_available_at: nil, original_title: nil, parent_guid: nil, parent_index: nil, parent_key: nil, parent_rating_key: nil, parent_studio: nil, parent_theme: nil, parent_thumb: nil, parent_title: nil, parent_year: nil, primary_extra_key: nil, rating: nil, rating_image: nil, rating_key: nil, role: nil, skip_count: nil, studio: nil, summary: nil, tagline: nil, theme: nil, thumb: nil, title: nil, title_sort: nil, type: nil, updated_at: nil, view_count: nil, viewed_leaf_count: nil, view_offset: nil, writer: nil, year: nil)
        @added_at = added_at
        @art = art
        @audience_rating = audience_rating
        @audience_rating_image = audience_rating_image
        @chapter_source = chapter_source
        @child_count = child_count
        @content_rating = content_rating
        @country = country
        @director = director
        @duration = duration
        @genre = genre
        @grandparent_art = grandparent_art
        @grandparent_guid = grandparent_guid
        @grandparent_key = grandparent_key
        @grandparent_rating_key = grandparent_rating_key
        @grandparent_theme = grandparent_theme
        @grandparent_thumb = grandparent_thumb
        @grandparent_title = grandparent_title
        @guid = guid
        @has_premium_extras = has_premium_extras
        @has_premium_primary_extra = has_premium_primary_extra
        @index = index
        @key = key
        @last_viewed_at = last_viewed_at
        @leaf_count = leaf_count
        @media = media
        @originally_available_at = originally_available_at
        @original_title = original_title
        @parent_guid = parent_guid
        @parent_index = parent_index
        @parent_key = parent_key
        @parent_rating_key = parent_rating_key
        @parent_studio = parent_studio
        @parent_theme = parent_theme
        @parent_thumb = parent_thumb
        @parent_title = parent_title
        @parent_year = parent_year
        @primary_extra_key = primary_extra_key
        @rating = rating
        @rating_image = rating_image
        @rating_key = rating_key
        @role = role
        @skip_count = skip_count
        @studio = studio
        @summary = summary
        @tagline = tagline
        @theme = theme
        @thumb = thumb
        @title = title
        @title_sort = title_sort
        @type = type
        @updated_at = updated_at
        @view_count = view_count
        @viewed_leaf_count = viewed_leaf_count
        @view_offset = view_offset
        @writer = writer
        @year = year
      end
    end
  end
end
