# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class GetOnDeckErrors < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :code, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('code') } }

      field :message, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('message') } }

      field :status, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('status') } }


      sig { params(code: T.nilable(Float), message: T.nilable(String), status: T.nilable(Float)).void }
      def initialize(code: nil, message: nil, status: nil)
        @code = code
        @message = message
        @status = status
      end
    end

    # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    class GetOnDeckLibraryResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::GetOnDeckErrors]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::GetOnDeckErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class Stream < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :bit_depth, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('bitDepth') } }

      field :bitrate, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('bitrate') } }

      field :chroma_location, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('chromaLocation') } }

      field :chroma_subsampling, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('chromaSubsampling') } }

      field :codec, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('codec') } }

      field :coded_height, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('codedHeight') } }

      field :coded_width, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('codedWidth') } }

      field :color_range, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('colorRange') } }

      field :default, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('default') } }

      field :display_title, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('displayTitle') } }

      field :extended_display_title, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('extendedDisplayTitle') } }

      field :frame_rate, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('frameRate') } }

      field :height, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('height') } }

      field :id, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :index, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('index') } }

      field :language, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('language') } }

      field :language_code, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('languageCode') } }

      field :language_tag, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('languageTag') } }

      field :level, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('level') } }

      field :profile, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('profile') } }

      field :ref_frames, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('refFrames') } }

      field :stream_type, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('streamType') } }

      field :width, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('width') } }


      sig { params(bit_depth: T.nilable(Float), bitrate: T.nilable(Float), chroma_location: T.nilable(String), chroma_subsampling: T.nilable(String), codec: T.nilable(String), coded_height: T.nilable(Float), coded_width: T.nilable(Float), color_range: T.nilable(String), default: T.nilable(T::Boolean), display_title: T.nilable(String), extended_display_title: T.nilable(String), frame_rate: T.nilable(Float), height: T.nilable(Float), id: T.nilable(Float), index: T.nilable(Float), language: T.nilable(String), language_code: T.nilable(String), language_tag: T.nilable(String), level: T.nilable(Float), profile: T.nilable(String), ref_frames: T.nilable(Float), stream_type: T.nilable(Float), width: T.nilable(Float)).void }
      def initialize(bit_depth: nil, bitrate: nil, chroma_location: nil, chroma_subsampling: nil, codec: nil, coded_height: nil, coded_width: nil, color_range: nil, default: nil, display_title: nil, extended_display_title: nil, frame_rate: nil, height: nil, id: nil, index: nil, language: nil, language_code: nil, language_tag: nil, level: nil, profile: nil, ref_frames: nil, stream_type: nil, width: nil)
        @bit_depth = bit_depth
        @bitrate = bitrate
        @chroma_location = chroma_location
        @chroma_subsampling = chroma_subsampling
        @codec = codec
        @coded_height = coded_height
        @coded_width = coded_width
        @color_range = color_range
        @default = default
        @display_title = display_title
        @extended_display_title = extended_display_title
        @frame_rate = frame_rate
        @height = height
        @id = id
        @index = index
        @language = language
        @language_code = language_code
        @language_tag = language_tag
        @level = level
        @profile = profile
        @ref_frames = ref_frames
        @stream_type = stream_type
        @width = width
      end
    end


    class GetOnDeckPart < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :audio_profile, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('audioProfile') } }

      field :container, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('container') } }

      field :duration, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('duration') } }

      field :file, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('file') } }

      field :id, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :key, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }

      field :size, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('size') } }

      field :stream, T.nilable(T::Array[Operations::Stream]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Stream') } }

      field :video_profile, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoProfile') } }


      sig { params(audio_profile: T.nilable(String), container: T.nilable(String), duration: T.nilable(Float), file: T.nilable(String), id: T.nilable(Float), key: T.nilable(String), size: T.nilable(Float), stream: T.nilable(T::Array[Operations::Stream]), video_profile: T.nilable(String)).void }
      def initialize(audio_profile: nil, container: nil, duration: nil, file: nil, id: nil, key: nil, size: nil, stream: nil, video_profile: nil)
        @audio_profile = audio_profile
        @container = container
        @duration = duration
        @file = file
        @id = id
        @key = key
        @size = size
        @stream = stream
        @video_profile = video_profile
      end
    end


    class GetOnDeckMedia < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :aspect_ratio, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('aspectRatio') } }

      field :audio_channels, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('audioChannels') } }

      field :audio_codec, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('audioCodec') } }

      field :audio_profile, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('audioProfile') } }

      field :bitrate, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('bitrate') } }

      field :container, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('container') } }

      field :duration, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('duration') } }

      field :height, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('height') } }

      field :id, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :part, T.nilable(T::Array[Operations::GetOnDeckPart]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Part') } }

      field :video_codec, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoCodec') } }

      field :video_frame_rate, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoFrameRate') } }

      field :video_profile, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoProfile') } }

      field :video_resolution, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoResolution') } }

      field :width, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('width') } }


      sig { params(aspect_ratio: T.nilable(Float), audio_channels: T.nilable(Float), audio_codec: T.nilable(String), audio_profile: T.nilable(String), bitrate: T.nilable(Float), container: T.nilable(String), duration: T.nilable(Float), height: T.nilable(Float), id: T.nilable(Float), part: T.nilable(T::Array[Operations::GetOnDeckPart]), video_codec: T.nilable(String), video_frame_rate: T.nilable(String), video_profile: T.nilable(String), video_resolution: T.nilable(String), width: T.nilable(Float)).void }
      def initialize(aspect_ratio: nil, audio_channels: nil, audio_codec: nil, audio_profile: nil, bitrate: nil, container: nil, duration: nil, height: nil, id: nil, part: nil, video_codec: nil, video_frame_rate: nil, video_profile: nil, video_resolution: nil, width: nil)
        @aspect_ratio = aspect_ratio
        @audio_channels = audio_channels
        @audio_codec = audio_codec
        @audio_profile = audio_profile
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


    class Guids < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :id, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }


      sig { params(id: T.nilable(String)).void }
      def initialize(id: nil)
        @id = id
      end
    end


    class GetOnDeckMetadata < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :added_at, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('addedAt') } }

      field :allow_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('allowSync') } }

      field :art, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('art') } }

      field :content_rating, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('contentRating') } }

      field :duration, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('duration') } }

      field :grandparent_art, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentArt') } }

      field :grandparent_guid, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentGuid') } }

      field :grandparent_key, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentKey') } }

      field :grandparent_rating_key, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentRatingKey') } }

      field :grandparent_theme, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentTheme') } }

      field :grandparent_thumb, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentThumb') } }

      field :grandparent_title, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('grandparentTitle') } }

      field :guid, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('guid') } }

      field :guids, T.nilable(T::Array[Operations::Guids]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Guid') } }

      field :index, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('index') } }

      field :key, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }

      field :last_viewed_at, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('lastViewedAt') } }

      field :library_section_id, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('librarySectionID') } }

      field :library_section_key, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('librarySectionKey') } }

      field :library_section_title, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('librarySectionTitle') } }

      field :library_section_uuid, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('librarySectionUUID') } }

      field :media, T.nilable(T::Array[Operations::GetOnDeckMedia]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Media') } }

      field :originally_available_at, T.nilable(DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('originallyAvailableAt'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :parent_guid, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentGuid') } }

      field :parent_index, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentIndex') } }

      field :parent_key, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentKey') } }

      field :parent_rating_key, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentRatingKey') } }

      field :parent_thumb, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentThumb') } }

      field :parent_title, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parentTitle') } }

      field :rating_key, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ratingKey') } }

      field :summary, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('summary') } }

      field :thumb, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('thumb') } }

      field :title, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title') } }

      field :type, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type') } }

      field :updated_at, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('updatedAt') } }

      field :year, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('year') } }


      sig { params(added_at: T.nilable(Float), allow_sync: T.nilable(T::Boolean), art: T.nilable(String), content_rating: T.nilable(String), duration: T.nilable(Float), grandparent_art: T.nilable(String), grandparent_guid: T.nilable(String), grandparent_key: T.nilable(String), grandparent_rating_key: T.nilable(Float), grandparent_theme: T.nilable(String), grandparent_thumb: T.nilable(String), grandparent_title: T.nilable(String), guid: T.nilable(String), guids: T.nilable(T::Array[Operations::Guids]), index: T.nilable(Float), key: T.nilable(String), last_viewed_at: T.nilable(Float), library_section_id: T.nilable(Float), library_section_key: T.nilable(String), library_section_title: T.nilable(String), library_section_uuid: T.nilable(String), media: T.nilable(T::Array[Operations::GetOnDeckMedia]), originally_available_at: T.nilable(DateTime), parent_guid: T.nilable(String), parent_index: T.nilable(Float), parent_key: T.nilable(String), parent_rating_key: T.nilable(Float), parent_thumb: T.nilable(String), parent_title: T.nilable(String), rating_key: T.nilable(Float), summary: T.nilable(String), thumb: T.nilable(String), title: T.nilable(String), type: T.nilable(String), updated_at: T.nilable(Float), year: T.nilable(Float)).void }
      def initialize(added_at: nil, allow_sync: nil, art: nil, content_rating: nil, duration: nil, grandparent_art: nil, grandparent_guid: nil, grandparent_key: nil, grandparent_rating_key: nil, grandparent_theme: nil, grandparent_thumb: nil, grandparent_title: nil, guid: nil, guids: nil, index: nil, key: nil, last_viewed_at: nil, library_section_id: nil, library_section_key: nil, library_section_title: nil, library_section_uuid: nil, media: nil, originally_available_at: nil, parent_guid: nil, parent_index: nil, parent_key: nil, parent_rating_key: nil, parent_thumb: nil, parent_title: nil, rating_key: nil, summary: nil, thumb: nil, title: nil, type: nil, updated_at: nil, year: nil)
        @added_at = added_at
        @allow_sync = allow_sync
        @art = art
        @content_rating = content_rating
        @duration = duration
        @grandparent_art = grandparent_art
        @grandparent_guid = grandparent_guid
        @grandparent_key = grandparent_key
        @grandparent_rating_key = grandparent_rating_key
        @grandparent_theme = grandparent_theme
        @grandparent_thumb = grandparent_thumb
        @grandparent_title = grandparent_title
        @guid = guid
        @guids = guids
        @index = index
        @key = key
        @last_viewed_at = last_viewed_at
        @library_section_id = library_section_id
        @library_section_key = library_section_key
        @library_section_title = library_section_title
        @library_section_uuid = library_section_uuid
        @media = media
        @originally_available_at = originally_available_at
        @parent_guid = parent_guid
        @parent_index = parent_index
        @parent_key = parent_key
        @parent_rating_key = parent_rating_key
        @parent_thumb = parent_thumb
        @parent_title = parent_title
        @rating_key = rating_key
        @summary = summary
        @thumb = thumb
        @title = title
        @type = type
        @updated_at = updated_at
        @year = year
      end
    end


    class GetOnDeckMediaContainer < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :allow_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('allowSync') } }

      field :identifier, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('identifier') } }

      field :media_tag_prefix, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('mediaTagPrefix') } }

      field :media_tag_version, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('mediaTagVersion') } }

      field :metadata, T.nilable(T::Array[Operations::GetOnDeckMetadata]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Metadata') } }

      field :mixed_parents, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('mixedParents') } }

      field :size, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('size') } }


      sig { params(allow_sync: T.nilable(T::Boolean), identifier: T.nilable(String), media_tag_prefix: T.nilable(String), media_tag_version: T.nilable(Float), metadata: T.nilable(T::Array[Operations::GetOnDeckMetadata]), mixed_parents: T.nilable(T::Boolean), size: T.nilable(Float)).void }
      def initialize(allow_sync: nil, identifier: nil, media_tag_prefix: nil, media_tag_version: nil, metadata: nil, mixed_parents: nil, size: nil)
        @allow_sync = allow_sync
        @identifier = identifier
        @media_tag_prefix = media_tag_prefix
        @media_tag_version = media_tag_version
        @metadata = metadata
        @mixed_parents = mixed_parents
        @size = size
      end
    end

    # The on Deck content
    class GetOnDeckResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :media_container, T.nilable(Operations::GetOnDeckMediaContainer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('MediaContainer') } }


      sig { params(media_container: T.nilable(Operations::GetOnDeckMediaContainer)).void }
      def initialize(media_container: nil)
        @media_container = media_container
      end
    end


    class GetOnDeckResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # The on Deck content
      field :two_hundred_application_json_object, T.nilable(Operations::GetOnDeckResponseBody)
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :four_hundred_and_one_application_json_object, T.nilable(Operations::GetOnDeckLibraryResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, two_hundred_application_json_object: T.nilable(Operations::GetOnDeckResponseBody), four_hundred_and_one_application_json_object: T.nilable(Operations::GetOnDeckLibraryResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, two_hundred_application_json_object: nil, four_hundred_and_one_application_json_object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @two_hundred_application_json_object = two_hundred_application_json_object
        @four_hundred_and_one_application_json_object = four_hundred_and_one_application_json_object
      end
    end
  end
end
