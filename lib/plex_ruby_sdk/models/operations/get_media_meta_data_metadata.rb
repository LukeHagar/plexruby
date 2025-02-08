# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetMediaMetaDataMetadata < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # Unix timestamp when the item was added.
      field :added_at, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('addedAt') } }
      # URL of the art image.
      field :art, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('art') } }
      # The audience rating for the content.
      field :audience_rating, ::Float, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audienceRating') } }
      # The URL for the audience rating image.
      field :audience_rating_image, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audienceRatingImage') } }
      # The content rating (e.g., TV-MA).
      field :content_rating, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('contentRating') } }
      # Duration of the content in milliseconds.
      field :duration, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('duration') } }
      # The globally unique identifier for the item.
      field :guid, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('guid') } }
      # An array of GUID objects.
      field :guids, T::Array[::PlexRubySDK::Operations::Guids], { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Guid') } }
      # An array of image objects.
      field :image, T::Array[::PlexRubySDK::Operations::GetMediaMetaDataImage], { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Image') } }
      # The API key to access metadata details.
      field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }
      # The ID of the library section.
      field :library_section_id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionID') } }
      # The key of the library section.
      field :library_section_key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionKey') } }
      # The title of the library section.
      field :library_section_title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionTitle') } }
      # The original release date.
      field :originally_available_at, ::Date, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('originallyAvailableAt'), 'decoder': Utils.date_from_iso_format(false) } }
      # An array of rating objects.
      field :rating, T::Array[::PlexRubySDK::Operations::Rating], { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Rating') } }
      # The rating key of the metadata item.
      field :rating_key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ratingKey') } }
      # A summary of the content.
      field :summary, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('summary') } }
      # URL of the thumbnail image.
      field :thumb, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }
      # The title of the content.
      field :title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }
      # The type of content (e.g., show, movie).
      field :type, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }

      field :ultra_blur_colors, ::PlexRubySDK::Operations::GetMediaMetaDataUltraBlurColors, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('UltraBlurColors') } }
      # Unix timestamp when the item was last updated.
      field :updated_at, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('updatedAt') } }
      # The release year.
      field :year, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('year') } }

      field :chapter_source, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('chapterSource') } }
      # The number of child items.
      field :child_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('childCount') } }
      # An array of country tags.
      field :country, T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataCountry]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Country') } }
      # An array of Director roles.
      field :director, T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataDirector]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Director') } }
      # An array of genre tags.
      field :genre, T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataGenre]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Genre') } }
      # The URL of the grandparent's art image.
      field :grandparent_art, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentArt') } }
      # A GUID identifying the grandparent entity (e.g., show).
      field :grandparent_guid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentGuid') } }
      # A key identifying the grandparent metadata in the library.
      field :grandparent_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentKey') } }
      # The rating key of the grandparent of this metadata item.
      field :grandparent_rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentRatingKey') } }
      # A URL-friendly identifier (slug) for the grandparent entity.
      field :grandparent_slug, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentSlug') } }
      # The URL of the grandparent's thumbnail image.
      field :grandparent_thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentThumb') } }
      # The title of the grandparent entity (typically the show's title).
      field :grandparent_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentTitle') } }
      # The index or order of the item.
      field :index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('index') } }
      # Unix timestamp of when the item was last viewed.
      field :last_viewed_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('lastViewedAt') } }
      # The total number of episodes (or leaves).
      field :leaf_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('leafCount') } }
      # An array of location objects.
      field :location, T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataLocation]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Location') } }

      field :media, T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataMedia]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Media') } }
      # The original title of the content.
      field :original_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('originalTitle') } }
      # A GUID identifying the parent entity (e.g., season) for the item.
      field :parent_guid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentGuid') } }
      # The index number of the parent entity, which could indicate its order or position.
      field :parent_index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentIndex') } }
      # A key identifying the parent metadata in the library.
      field :parent_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentKey') } }
      # The rating key of the parent of this metadata item.
      field :parent_rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentRatingKey') } }
      # The URL of the parent's thumbnail image.
      field :parent_thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentThumb') } }
      # The title of the parent entity (typically the season's title).
      field :parent_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentTitle') } }

      field :primary_extra_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('primaryExtraKey') } }
      # An array of Writer roles.
      field :producer, T.nilable(T::Array[::PlexRubySDK::Operations::Producer]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Producer') } }
      # An array of Actor roles.
      field :role, T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataRole]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Role') } }
      # An array of similar content objects.
      field :similar, T.nilable(T::Array[::PlexRubySDK::Operations::Similar]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Similar') } }
      # The number of times the item has been skipped.
      field :skip_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('skipCount') } }
      # A URL-friendly identifier for the item.
      field :slug, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('slug') } }
      # The studio that produced the content.
      field :studio, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('studio') } }
      # The tagline of the content.
      field :tagline, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('tagline') } }
      # URL of the theme image.
      field :theme, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('theme') } }
      # The number of times the item has been viewed.
      field :view_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewCount') } }
      # The number of episodes that have been viewed.
      field :viewed_leaf_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewedLeafCount') } }
      # An array of Writer roles.
      field :writer, T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataWriter]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Writer') } }


      sig { params(added_at: ::Integer, art: ::String, audience_rating: ::Float, audience_rating_image: ::String, content_rating: ::String, duration: ::Integer, guid: ::String, guids: T::Array[::PlexRubySDK::Operations::Guids], image: T::Array[::PlexRubySDK::Operations::GetMediaMetaDataImage], key: ::String, library_section_id: ::Integer, library_section_key: ::String, library_section_title: ::String, originally_available_at: ::Date, rating: T::Array[::PlexRubySDK::Operations::Rating], rating_key: ::String, summary: ::String, thumb: ::String, title: ::String, type: ::String, ultra_blur_colors: ::PlexRubySDK::Operations::GetMediaMetaDataUltraBlurColors, updated_at: ::Integer, year: ::Integer, chapter_source: T.nilable(::String), child_count: T.nilable(::Integer), country: T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataCountry]), director: T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataDirector]), genre: T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataGenre]), grandparent_art: T.nilable(::String), grandparent_guid: T.nilable(::String), grandparent_key: T.nilable(::String), grandparent_rating_key: T.nilable(::String), grandparent_slug: T.nilable(::String), grandparent_thumb: T.nilable(::String), grandparent_title: T.nilable(::String), index: T.nilable(::Integer), last_viewed_at: T.nilable(::Integer), leaf_count: T.nilable(::Integer), location: T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataLocation]), media: T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataMedia]), original_title: T.nilable(::String), parent_guid: T.nilable(::String), parent_index: T.nilable(::Integer), parent_key: T.nilable(::String), parent_rating_key: T.nilable(::String), parent_thumb: T.nilable(::String), parent_title: T.nilable(::String), primary_extra_key: T.nilable(::String), producer: T.nilable(T::Array[::PlexRubySDK::Operations::Producer]), role: T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataRole]), similar: T.nilable(T::Array[::PlexRubySDK::Operations::Similar]), skip_count: T.nilable(::Integer), slug: T.nilable(::String), studio: T.nilable(::String), tagline: T.nilable(::String), theme: T.nilable(::String), view_count: T.nilable(::Integer), viewed_leaf_count: T.nilable(::Integer), writer: T.nilable(T::Array[::PlexRubySDK::Operations::GetMediaMetaDataWriter])).void }
      def initialize(added_at: nil, art: nil, audience_rating: nil, audience_rating_image: nil, content_rating: nil, duration: nil, guid: nil, guids: nil, image: nil, key: nil, library_section_id: nil, library_section_key: nil, library_section_title: nil, originally_available_at: nil, rating: nil, rating_key: nil, summary: nil, thumb: nil, title: nil, type: nil, ultra_blur_colors: nil, updated_at: nil, year: nil, chapter_source: nil, child_count: nil, country: nil, director: nil, genre: nil, grandparent_art: nil, grandparent_guid: nil, grandparent_key: nil, grandparent_rating_key: nil, grandparent_slug: nil, grandparent_thumb: nil, grandparent_title: nil, index: nil, last_viewed_at: nil, leaf_count: nil, location: nil, media: nil, original_title: nil, parent_guid: nil, parent_index: nil, parent_key: nil, parent_rating_key: nil, parent_thumb: nil, parent_title: nil, primary_extra_key: nil, producer: nil, role: nil, similar: nil, skip_count: nil, slug: nil, studio: nil, tagline: nil, theme: nil, view_count: nil, viewed_leaf_count: nil, writer: nil)
        @added_at = added_at
        @art = art
        @audience_rating = audience_rating
        @audience_rating_image = audience_rating_image
        @content_rating = content_rating
        @duration = duration
        @guid = guid
        @guids = guids
        @image = image
        @key = key
        @library_section_id = library_section_id
        @library_section_key = library_section_key
        @library_section_title = library_section_title
        @originally_available_at = originally_available_at
        @rating = rating
        @rating_key = rating_key
        @summary = summary
        @thumb = thumb
        @title = title
        @type = type
        @ultra_blur_colors = ultra_blur_colors
        @updated_at = updated_at
        @year = year
        @chapter_source = chapter_source
        @child_count = child_count
        @country = country
        @director = director
        @genre = genre
        @grandparent_art = grandparent_art
        @grandparent_guid = grandparent_guid
        @grandparent_key = grandparent_key
        @grandparent_rating_key = grandparent_rating_key
        @grandparent_slug = grandparent_slug
        @grandparent_thumb = grandparent_thumb
        @grandparent_title = grandparent_title
        @index = index
        @last_viewed_at = last_viewed_at
        @leaf_count = leaf_count
        @location = location
        @media = media
        @original_title = original_title
        @parent_guid = parent_guid
        @parent_index = parent_index
        @parent_key = parent_key
        @parent_rating_key = parent_rating_key
        @parent_thumb = parent_thumb
        @parent_title = parent_title
        @primary_extra_key = primary_extra_key
        @producer = producer
        @role = role
        @similar = similar
        @skip_count = skip_count
        @slug = slug
        @studio = studio
        @tagline = tagline
        @theme = theme
        @view_count = view_count
        @viewed_leaf_count = viewed_leaf_count
        @writer = writer
      end
    end
  end
end
