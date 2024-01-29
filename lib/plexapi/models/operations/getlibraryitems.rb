# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    # Tag - A key representing a specific tag within the section.
    class Tag < T::Enum
      enums do
        ALL = new('all')
        UNWATCHED = new('unwatched')
        NEWEST = new('newest')
        RECENTLY_ADDED = new('recentlyAdded')
        RECENTLY_VIEWED = new('recentlyViewed')
        ON_DECK = new('onDeck')
        COLLECTION = new('collection')
        EDITION = new('edition')
        GENRE = new('genre')
        YEAR = new('year')
        DECADE = new('decade')
        DIRECTOR = new('director')
        ACTOR = new('actor')
        COUNTRY = new('country')
        CONTENT_RATING = new('contentRating')
        RATING = new('rating')
        RESOLUTION = new('resolution')
        FIRST_CHARACTER = new('firstCharacter')
        FOLDER = new('folder')
      end
    end



    class GetLibraryItemsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # the Id of the library to query
      field :section_id, Integer, { 'path_param': { 'field_name': 'sectionId', 'style': 'simple', 'explode': false } }
      # A key representing a specific tag within the section.
      field :tag, Operations::Tag, { 'path_param': { 'field_name': 'tag', 'style': 'simple', 'explode': false } }


      sig { params(section_id: Integer, tag: Operations::Tag).void }
      def initialize(section_id: nil, tag: nil)
        @section_id = section_id
        @tag = tag
      end
    end


    class GetLibraryItemsPart < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :container, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('container') } }

      field :duration, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('duration') } }

      field :file, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('file') } }

      field :id, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :key, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }

      field :size, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('size') } }

      field :video_profile, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoProfile') } }


      sig { params(container: T.nilable(String), duration: T.nilable(Integer), file: T.nilable(String), id: T.nilable(Integer), key: T.nilable(String), size: T.nilable(Integer), video_profile: T.nilable(String)).void }
      def initialize(container: nil, duration: nil, file: nil, id: nil, key: nil, size: nil, video_profile: nil)
        @container = container
        @duration = duration
        @file = file
        @id = id
        @key = key
        @size = size
        @video_profile = video_profile
      end
    end


    class GetLibraryItemsMedia < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :aspect_ratio, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('aspectRatio') } }

      field :audio_channels, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('audioChannels') } }

      field :audio_codec, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('audioCodec') } }

      field :bitrate, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('bitrate') } }

      field :container, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('container') } }

      field :duration, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('duration') } }

      field :height, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('height') } }

      field :id, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :part, T.nilable(T::Array[Operations::GetLibraryItemsPart]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Part') } }

      field :video_codec, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoCodec') } }

      field :video_frame_rate, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoFrameRate') } }

      field :video_profile, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoProfile') } }

      field :video_resolution, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoResolution') } }

      field :width, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('width') } }


      sig { params(aspect_ratio: T.nilable(Float), audio_channels: T.nilable(Integer), audio_codec: T.nilable(String), bitrate: T.nilable(Integer), container: T.nilable(String), duration: T.nilable(Integer), height: T.nilable(Integer), id: T.nilable(Integer), part: T.nilable(T::Array[Operations::GetLibraryItemsPart]), video_codec: T.nilable(String), video_frame_rate: T.nilable(String), video_profile: T.nilable(String), video_resolution: T.nilable(String), width: T.nilable(Integer)).void }
      def initialize(aspect_ratio: nil, audio_channels: nil, audio_codec: nil, bitrate: nil, container: nil, duration: nil, height: nil, id: nil, part: nil, video_codec: nil, video_frame_rate: nil, video_profile: nil, video_resolution: nil, width: nil)
        @aspect_ratio = aspect_ratio
        @audio_channels = audio_channels
        @audio_codec = audio_codec
        @bitrate = bitrate
        @container = container
        @duration = duration
        @height = height
        @id = id
        @part = part
        @video_codec = video_codec
        @video_frame_rate = video_frame_rate
        @video_profile = video_profile
        @video_resolution = video_resolution
        @width = width
      end
    end


    class GetLibraryItemsGenre < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :tag, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tag') } }


      sig { params(tag: T.nilable(String)).void }
      def initialize(tag: nil)
        @tag = tag
      end
    end


    class GetLibraryItemsCountry < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :tag, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tag') } }


      sig { params(tag: T.nilable(String)).void }
      def initialize(tag: nil)
        @tag = tag
      end
    end


    class GetLibraryItemsDirector < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :tag, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tag') } }


      sig { params(tag: T.nilable(String)).void }
      def initialize(tag: nil)
        @tag = tag
      end
    end


    class GetLibraryItemsWriter < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :tag, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tag') } }


      sig { params(tag: T.nilable(String)).void }
      def initialize(tag: nil)
        @tag = tag
      end
    end


    class GetLibraryItemsRole < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :tag, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tag') } }


      sig { params(tag: T.nilable(String)).void }
      def initialize(tag: nil)
        @tag = tag
      end
    end


    class GetLibraryItemsMetadata < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :added_at, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('addedAt') } }

      field :art, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('art') } }

      field :audience_rating, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('audienceRating') } }

      field :audience_rating_image, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('audienceRatingImage') } }

      field :chapter_source, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('chapterSource') } }

      field :child_count, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('childCount') } }

      field :content_rating, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('contentRating') } }

      field :country, T.nilable(T::Array[Operations::GetLibraryItemsCountry]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Country') } }

      field :director, T.nilable(T::Array[Operations::GetLibraryItemsDirector]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Director') } }

      field :duration, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('duration') } }

      field :genre, T.nilable(T::Array[Operations::GetLibraryItemsGenre]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Genre') } }

      field :grandparent_art, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentArt') } }

      field :grandparent_guid, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentGuid') } }

      field :grandparent_key, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentKey') } }

      field :grandparent_rating_key, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentRatingKey') } }

      field :grandparent_theme, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentTheme') } }

      field :grandparent_thumb, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentThumb') } }

      field :grandparent_title, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentTitle') } }

      field :guid, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('guid') } }

      field :has_premium_extras, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('hasPremiumExtras') } }

      field :has_premium_primary_extra, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('hasPremiumPrimaryExtra') } }

      field :index, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('index') } }

      field :key, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }

      field :last_viewed_at, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('lastViewedAt') } }

      field :leaf_count, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('leafCount') } }

      field :media, T.nilable(T::Array[Operations::GetLibraryItemsMedia]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Media') } }

      field :originally_available_at, T.nilable(Date), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('originallyAvailableAt'), 'decoder': Utils.date_from_iso_format(true) } }

      field :original_title, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('originalTitle') } }

      field :parent_guid, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentGuid') } }

      field :parent_index, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentIndex') } }

      field :parent_key, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentKey') } }

      field :parent_rating_key, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentRatingKey') } }

      field :parent_studio, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentStudio') } }

      field :parent_theme, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentTheme') } }

      field :parent_thumb, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentThumb') } }

      field :parent_title, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentTitle') } }

      field :parent_year, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentYear') } }

      field :primary_extra_key, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('primaryExtraKey') } }

      field :rating, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('rating') } }

      field :rating_image, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ratingImage') } }

      field :rating_key, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ratingKey') } }

      field :role, T.nilable(T::Array[Operations::GetLibraryItemsRole]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Role') } }

      field :skip_count, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('skipCount') } }

      field :studio, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('studio') } }

      field :summary, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('summary') } }

      field :tagline, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tagline') } }

      field :theme, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('theme') } }

      field :thumb, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('thumb') } }

      field :title, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title') } }

      field :title_sort, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('titleSort') } }

      field :type, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type') } }

      field :updated_at, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('updatedAt') } }

      field :view_count, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('viewCount') } }

      field :viewed_leaf_count, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('viewedLeafCount') } }

      field :view_offset, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('viewOffset') } }

      field :writer, T.nilable(T::Array[Operations::GetLibraryItemsWriter]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Writer') } }

      field :year, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('year') } }


      sig { params(added_at: T.nilable(Integer), art: T.nilable(String), audience_rating: T.nilable(Float), audience_rating_image: T.nilable(String), chapter_source: T.nilable(String), child_count: T.nilable(Integer), content_rating: T.nilable(String), country: T.nilable(T::Array[Operations::GetLibraryItemsCountry]), director: T.nilable(T::Array[Operations::GetLibraryItemsDirector]), duration: T.nilable(Integer), genre: T.nilable(T::Array[Operations::GetLibraryItemsGenre]), grandparent_art: T.nilable(String), grandparent_guid: T.nilable(String), grandparent_key: T.nilable(String), grandparent_rating_key: T.nilable(String), grandparent_theme: T.nilable(String), grandparent_thumb: T.nilable(String), grandparent_title: T.nilable(String), guid: T.nilable(String), has_premium_extras: T.nilable(String), has_premium_primary_extra: T.nilable(String), index: T.nilable(Integer), key: T.nilable(String), last_viewed_at: T.nilable(Integer), leaf_count: T.nilable(Integer), media: T.nilable(T::Array[Operations::GetLibraryItemsMedia]), originally_available_at: T.nilable(Date), original_title: T.nilable(String), parent_guid: T.nilable(String), parent_index: T.nilable(Integer), parent_key: T.nilable(String), parent_rating_key: T.nilable(String), parent_studio: T.nilable(String), parent_theme: T.nilable(String), parent_thumb: T.nilable(String), parent_title: T.nilable(String), parent_year: T.nilable(Integer), primary_extra_key: T.nilable(String), rating: T.nilable(Float), rating_image: T.nilable(String), rating_key: T.nilable(String), role: T.nilable(T::Array[Operations::GetLibraryItemsRole]), skip_count: T.nilable(Integer), studio: T.nilable(String), summary: T.nilable(String), tagline: T.nilable(String), theme: T.nilable(String), thumb: T.nilable(String), title: T.nilable(String), title_sort: T.nilable(String), type: T.nilable(String), updated_at: T.nilable(Integer), view_count: T.nilable(Integer), viewed_leaf_count: T.nilable(Integer), view_offset: T.nilable(Integer), writer: T.nilable(T::Array[Operations::GetLibraryItemsWriter]), year: T.nilable(Integer)).void }
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


    class GetLibraryItemsMediaContainer < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :allow_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('allowSync') } }

      field :art, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('art') } }

      field :identifier, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('identifier') } }

      field :library_section_id, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('librarySectionID') } }

      field :library_section_title, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('librarySectionTitle') } }

      field :library_section_uuid, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('librarySectionUUID') } }

      field :media_tag_prefix, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('mediaTagPrefix') } }

      field :media_tag_version, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('mediaTagVersion') } }

      field :metadata, T.nilable(T::Array[Operations::GetLibraryItemsMetadata]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Metadata') } }

      field :mixed_parents, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('mixedParents') } }

      field :size, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('size') } }

      field :thumb, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('thumb') } }

      field :title1, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title1') } }

      field :title2, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title2') } }

      field :view_group, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('viewGroup') } }

      field :view_mode, T.nilable(Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('viewMode') } }


      sig { params(allow_sync: T.nilable(T::Boolean), art: T.nilable(String), identifier: T.nilable(String), library_section_id: T.nilable(Integer), library_section_title: T.nilable(String), library_section_uuid: T.nilable(String), media_tag_prefix: T.nilable(String), media_tag_version: T.nilable(Integer), metadata: T.nilable(T::Array[Operations::GetLibraryItemsMetadata]), mixed_parents: T.nilable(T::Boolean), size: T.nilable(Integer), thumb: T.nilable(String), title1: T.nilable(String), title2: T.nilable(String), view_group: T.nilable(String), view_mode: T.nilable(Integer)).void }
      def initialize(allow_sync: nil, art: nil, identifier: nil, library_section_id: nil, library_section_title: nil, library_section_uuid: nil, media_tag_prefix: nil, media_tag_version: nil, metadata: nil, mixed_parents: nil, size: nil, thumb: nil, title1: nil, title2: nil, view_group: nil, view_mode: nil)
        @allow_sync = allow_sync
        @art = art
        @identifier = identifier
        @library_section_id = library_section_id
        @library_section_title = library_section_title
        @library_section_uuid = library_section_uuid
        @media_tag_prefix = media_tag_prefix
        @media_tag_version = media_tag_version
        @metadata = metadata
        @mixed_parents = mixed_parents
        @size = size
        @thumb = thumb
        @title1 = title1
        @title2 = title2
        @view_group = view_group
        @view_mode = view_mode
      end
    end

    # The contents of the library by section and tag
    class GetLibraryItemsResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :media_container, T.nilable(Operations::GetLibraryItemsMediaContainer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('MediaContainer') } }


      sig { params(media_container: T.nilable(Operations::GetLibraryItemsMediaContainer)).void }
      def initialize(media_container: nil)
        @media_container = media_container
      end
    end


    class GetLibraryItemsResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # The contents of the library by section and tag
      field :object, T.nilable(Operations::GetLibraryItemsResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, object: T.nilable(Operations::GetLibraryItemsResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @object = object
      end
    end
  end
end
