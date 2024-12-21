# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetRecentlyAddedMetadata < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # Unix epoch datetime in seconds
      field :added_at, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('addedAt') } }

      field :guid, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('guid') } }

      field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }
      # The rating key (Media ID) of this media item.
      # Note: This is always an integer, but is represented as a string in the API.
      # 
      field :rating_key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ratingKey') } }

      field :summary, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('summary') } }

      field :title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }
      # The type of media content
      # 
      field :type, ::PlexRubySDK::Operations::GetRecentlyAddedHubsType, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::GetRecentlyAddedHubsType, false) } }

      field :art, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('art') } }

      field :audience_rating, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audienceRating') } }

      field :audience_rating_image, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audienceRatingImage') } }

      field :banner, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('banner') } }

      field :chapter_source, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('chapterSource') } }

      field :child_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('childCount') } }

      field :collection, T.nilable(T::Array[::PlexRubySDK::Operations::Collection]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Collection') } }

      field :content_rating, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('contentRating') } }

      field :country, T.nilable(T::Array[::PlexRubySDK::Operations::Country]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Country') } }

      field :director, T.nilable(T::Array[::PlexRubySDK::Operations::Director]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Director') } }

      field :duration, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('duration') } }

      field :flatten_seasons, T.nilable(::PlexRubySDK::Operations::FlattenSeasons), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('flattenSeasons'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::FlattenSeasons, true) } }

      field :genre, T.nilable(T::Array[::PlexRubySDK::Operations::Genre]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Genre') } }

      field :grandparent_art, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentArt') } }

      field :grandparent_guid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentGuid') } }

      field :grandparent_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentKey') } }

      field :grandparent_rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentRatingKey') } }

      field :grandparent_slug, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentSlug') } }

      field :grandparent_theme, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentTheme') } }

      field :grandparent_thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentThumb') } }

      field :grandparent_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('grandparentTitle') } }

      field :has_premium_extras, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hasPremiumExtras') } }

      field :has_premium_primary_extra, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hasPremiumPrimaryExtra') } }

      field :image, T.nilable(T::Array[::PlexRubySDK::Operations::GetRecentlyAddedImage]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Image') } }

      field :index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('index') } }

      field :last_viewed_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('lastViewedAt') } }

      field :leaf_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('leafCount') } }

      field :library_section_id, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionID') } }

      field :library_section_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionKey') } }

      field :library_section_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionTitle') } }

      field :location, T.nilable(T::Array[::PlexRubySDK::Operations::Location]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Location') } }
      # The Media object is only included when type query is `4` or higher.
      # 
      field :media, T.nilable(T::Array[::PlexRubySDK::Operations::Media]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Media') } }
      # The Guid object is only included in the response if the `includeGuids` parameter is set to `1`.
      # 
      field :media_guid, T.nilable(T::Array[::PlexRubySDK::Operations::MediaGuid]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Guid') } }

      field :meta_data_rating, T.nilable(T::Array[::PlexRubySDK::Operations::MetaDataRating]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Rating') } }

      field :originally_available_at, T.nilable(::Date), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('originallyAvailableAt'), 'decoder': Utils.date_from_iso_format(true) } }

      field :original_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('originalTitle') } }

      field :parent_guid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentGuid') } }

      field :parent_index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentIndex') } }

      field :parent_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentKey') } }
      # The rating key of the parent item.
      # 
      field :parent_rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentRatingKey') } }

      field :parent_slug, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentSlug') } }

      field :parent_studio, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentStudio') } }

      field :parent_theme, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentTheme') } }

      field :parent_thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentThumb') } }

      field :parent_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentTitle') } }

      field :parent_year, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('parentYear') } }

      field :primary_extra_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('primaryExtraKey') } }

      field :rating, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('rating') } }

      field :rating_image, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ratingImage') } }

      field :role, T.nilable(T::Array[::PlexRubySDK::Operations::Role]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Role') } }

      field :season_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('seasonCount') } }
      # Setting that indicates the episode ordering for the show
      # None = Library default,
      # tmdbAiring = The Movie Database (Aired),
      # tvdbAiring = TheTVDB (Aired),
      # tvdbDvd = TheTVDB (DVD),
      # tvdbAbsolute = TheTVDB (Absolute)).
      # 
      field :show_ordering, T.nilable(::PlexRubySDK::Operations::ShowOrdering), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('showOrdering'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::ShowOrdering, true) } }

      field :skip_children, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('skipChildren') } }

      field :skip_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('skipCount') } }

      field :slug, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('slug') } }

      field :studio, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('studio') } }

      field :tagline, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('tagline') } }

      field :theme, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('theme') } }

      field :thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }

      field :title_sort, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('titleSort') } }

      field :ultra_blur_colors, T.nilable(::PlexRubySDK::Operations::UltraBlurColors), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('UltraBlurColors') } }
      # Unix epoch datetime in seconds
      field :updated_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('updatedAt') } }

      field :view_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewCount') } }

      field :viewed_leaf_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewedLeafCount') } }

      field :view_offset, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('viewOffset') } }

      field :writer, T.nilable(T::Array[::PlexRubySDK::Operations::Writer]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Writer') } }

      field :year, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('year') } }


      sig { params(added_at: ::Integer, guid: ::String, key: ::String, rating_key: ::String, summary: ::String, title: ::String, type: ::PlexRubySDK::Operations::GetRecentlyAddedHubsType, art: T.nilable(::String), audience_rating: T.nilable(::Float), audience_rating_image: T.nilable(::String), banner: T.nilable(::String), chapter_source: T.nilable(::String), child_count: T.nilable(::Integer), collection: T.nilable(T::Array[::PlexRubySDK::Operations::Collection]), content_rating: T.nilable(::String), country: T.nilable(T::Array[::PlexRubySDK::Operations::Country]), director: T.nilable(T::Array[::PlexRubySDK::Operations::Director]), duration: T.nilable(::Integer), flatten_seasons: T.nilable(::PlexRubySDK::Operations::FlattenSeasons), genre: T.nilable(T::Array[::PlexRubySDK::Operations::Genre]), grandparent_art: T.nilable(::String), grandparent_guid: T.nilable(::String), grandparent_key: T.nilable(::String), grandparent_rating_key: T.nilable(::String), grandparent_slug: T.nilable(::String), grandparent_theme: T.nilable(::String), grandparent_thumb: T.nilable(::String), grandparent_title: T.nilable(::String), has_premium_extras: T.nilable(::String), has_premium_primary_extra: T.nilable(::String), image: T.nilable(T::Array[::PlexRubySDK::Operations::GetRecentlyAddedImage]), index: T.nilable(::Integer), last_viewed_at: T.nilable(::Integer), leaf_count: T.nilable(::Integer), library_section_id: T.nilable(::Integer), library_section_key: T.nilable(::String), library_section_title: T.nilable(::String), location: T.nilable(T::Array[::PlexRubySDK::Operations::Location]), media: T.nilable(T::Array[::PlexRubySDK::Operations::Media]), media_guid: T.nilable(T::Array[::PlexRubySDK::Operations::MediaGuid]), meta_data_rating: T.nilable(T::Array[::PlexRubySDK::Operations::MetaDataRating]), originally_available_at: T.nilable(::Date), original_title: T.nilable(::String), parent_guid: T.nilable(::String), parent_index: T.nilable(::Integer), parent_key: T.nilable(::String), parent_rating_key: T.nilable(::String), parent_slug: T.nilable(::String), parent_studio: T.nilable(::String), parent_theme: T.nilable(::String), parent_thumb: T.nilable(::String), parent_title: T.nilable(::String), parent_year: T.nilable(::Integer), primary_extra_key: T.nilable(::String), rating: T.nilable(::Float), rating_image: T.nilable(::String), role: T.nilable(T::Array[::PlexRubySDK::Operations::Role]), season_count: T.nilable(::Integer), show_ordering: T.nilable(::PlexRubySDK::Operations::ShowOrdering), skip_children: T.nilable(T::Boolean), skip_count: T.nilable(::Integer), slug: T.nilable(::String), studio: T.nilable(::String), tagline: T.nilable(::String), theme: T.nilable(::String), thumb: T.nilable(::String), title_sort: T.nilable(::String), ultra_blur_colors: T.nilable(::PlexRubySDK::Operations::UltraBlurColors), updated_at: T.nilable(::Integer), view_count: T.nilable(::Integer), viewed_leaf_count: T.nilable(::Integer), view_offset: T.nilable(::Integer), writer: T.nilable(T::Array[::PlexRubySDK::Operations::Writer]), year: T.nilable(::Integer)).void }
      def initialize(added_at: nil, guid: nil, key: nil, rating_key: nil, summary: nil, title: nil, type: nil, art: nil, audience_rating: nil, audience_rating_image: nil, banner: nil, chapter_source: nil, child_count: nil, collection: nil, content_rating: nil, country: nil, director: nil, duration: nil, flatten_seasons: nil, genre: nil, grandparent_art: nil, grandparent_guid: nil, grandparent_key: nil, grandparent_rating_key: nil, grandparent_slug: nil, grandparent_theme: nil, grandparent_thumb: nil, grandparent_title: nil, has_premium_extras: nil, has_premium_primary_extra: nil, image: nil, index: nil, last_viewed_at: nil, leaf_count: nil, library_section_id: nil, library_section_key: nil, library_section_title: nil, location: nil, media: nil, media_guid: nil, meta_data_rating: nil, originally_available_at: nil, original_title: nil, parent_guid: nil, parent_index: nil, parent_key: nil, parent_rating_key: nil, parent_slug: nil, parent_studio: nil, parent_theme: nil, parent_thumb: nil, parent_title: nil, parent_year: nil, primary_extra_key: nil, rating: nil, rating_image: nil, role: nil, season_count: nil, show_ordering: nil, skip_children: nil, skip_count: nil, slug: nil, studio: nil, tagline: nil, theme: nil, thumb: nil, title_sort: nil, ultra_blur_colors: nil, updated_at: nil, view_count: nil, viewed_leaf_count: nil, view_offset: nil, writer: nil, year: nil)
        @added_at = added_at
        @guid = guid
        @key = key
        @rating_key = rating_key
        @summary = summary
        @title = title
        @type = type
        @art = art
        @audience_rating = audience_rating
        @audience_rating_image = audience_rating_image
        @banner = banner
        @chapter_source = chapter_source
        @child_count = child_count
        @collection = collection
        @content_rating = content_rating
        @country = country
        @director = director
        @duration = duration
        @flatten_seasons = flatten_seasons
        @genre = genre
        @grandparent_art = grandparent_art
        @grandparent_guid = grandparent_guid
        @grandparent_key = grandparent_key
        @grandparent_rating_key = grandparent_rating_key
        @grandparent_slug = grandparent_slug
        @grandparent_theme = grandparent_theme
        @grandparent_thumb = grandparent_thumb
        @grandparent_title = grandparent_title
        @has_premium_extras = has_premium_extras
        @has_premium_primary_extra = has_premium_primary_extra
        @image = image
        @index = index
        @last_viewed_at = last_viewed_at
        @leaf_count = leaf_count
        @library_section_id = library_section_id
        @library_section_key = library_section_key
        @library_section_title = library_section_title
        @location = location
        @media = media
        @media_guid = media_guid
        @meta_data_rating = meta_data_rating
        @originally_available_at = originally_available_at
        @original_title = original_title
        @parent_guid = parent_guid
        @parent_index = parent_index
        @parent_key = parent_key
        @parent_rating_key = parent_rating_key
        @parent_slug = parent_slug
        @parent_studio = parent_studio
        @parent_theme = parent_theme
        @parent_thumb = parent_thumb
        @parent_title = parent_title
        @parent_year = parent_year
        @primary_extra_key = primary_extra_key
        @rating = rating
        @rating_image = rating_image
        @role = role
        @season_count = season_count
        @show_ordering = show_ordering
        @skip_children = skip_children
        @skip_count = skip_count
        @slug = slug
        @studio = studio
        @tagline = tagline
        @theme = theme
        @thumb = thumb
        @title_sort = title_sort
        @ultra_blur_colors = ultra_blur_colors
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
