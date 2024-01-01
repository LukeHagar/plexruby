# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class GetRecentlyAddedErrors < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :code, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('code') } }

      field :message, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('message') } }

      field :status, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('status') } }


      sig { params(code: T.nilable(Float), message: T.nilable(String), status: T.nilable(Float)).void }
      def initialize(code: nil, message: nil, status: nil)
        @code = code
        @message = message
        @status = status
      end
    end

    # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    class GetRecentlyAddedLibraryResponseBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::GetRecentlyAddedErrors]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::GetRecentlyAddedErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class Part < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :container, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('container') } }

      field :duration, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('duration') } }

      field :file, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('file') } }

      field :has64bit_offsets, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('has64bitOffsets') } }

      field :has_thumbnail, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('hasThumbnail') } }

      field :id, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :key, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('key') } }

      field :optimized_for_streaming, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('optimizedForStreaming') } }

      field :size, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('size') } }

      field :video_profile, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('videoProfile') } }


      sig { params(container: T.nilable(String), duration: T.nilable(Float), file: T.nilable(String), has64bit_offsets: T.nilable(T::Boolean), has_thumbnail: T.nilable(Float), id: T.nilable(Float), key: T.nilable(String), optimized_for_streaming: T.nilable(T::Boolean), size: T.nilable(Float), video_profile: T.nilable(String)).void }
      def initialize(container: nil, duration: nil, file: nil, has64bit_offsets: nil, has_thumbnail: nil, id: nil, key: nil, optimized_for_streaming: nil, size: nil, video_profile: nil)
        @container = container
        @duration = duration
        @file = file
        @has64bit_offsets = has64bit_offsets
        @has_thumbnail = has_thumbnail
        @id = id
        @key = key
        @optimized_for_streaming = optimized_for_streaming
        @size = size
        @video_profile = video_profile
      end
    end


    class Media < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :aspect_ratio, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('aspectRatio') } }

      field :audio_channels, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('audioChannels') } }

      field :audio_codec, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('audioCodec') } }

      field :bitrate, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('bitrate') } }

      field :container, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('container') } }

      field :duration, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('duration') } }

      field :has64bit_offsets, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('has64bitOffsets') } }

      field :height, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('height') } }

      field :id, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('id') } }

      field :optimized_for_streaming, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('optimizedForStreaming') } }

      field :part, T.nilable(T::Array[Operations::Part]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('Part') } }

      field :video_codec, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('videoCodec') } }

      field :video_frame_rate, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('videoFrameRate') } }

      field :video_profile, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('videoProfile') } }

      field :video_resolution, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('videoResolution') } }

      field :width, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('width') } }


      sig { params(aspect_ratio: T.nilable(Float), audio_channels: T.nilable(Float), audio_codec: T.nilable(String), bitrate: T.nilable(Float), container: T.nilable(String), duration: T.nilable(Float), has64bit_offsets: T.nilable(T::Boolean), height: T.nilable(Float), id: T.nilable(Float), optimized_for_streaming: T.nilable(Float), part: T.nilable(T::Array[Operations::Part]), video_codec: T.nilable(String), video_frame_rate: T.nilable(String), video_profile: T.nilable(String), video_resolution: T.nilable(Float), width: T.nilable(Float)).void }
      def initialize(aspect_ratio: nil, audio_channels: nil, audio_codec: nil, bitrate: nil, container: nil, duration: nil, has64bit_offsets: nil, height: nil, id: nil, optimized_for_streaming: nil, part: nil, video_codec: nil, video_frame_rate: nil, video_profile: nil, video_resolution: nil, width: nil)
        @aspect_ratio = aspect_ratio
        @audio_channels = audio_channels
        @audio_codec = audio_codec
        @bitrate = bitrate
        @container = container
        @duration = duration
        @has64bit_offsets = has64bit_offsets
        @height = height
        @id = id
        @optimized_for_streaming = optimized_for_streaming
        @part = part
        @video_codec = video_codec
        @video_frame_rate = video_frame_rate
        @video_profile = video_profile
        @video_resolution = video_resolution
        @width = width
      end
    end


    class Genre < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :tag, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('tag') } }


      sig { params(tag: T.nilable(String)).void }
      def initialize(tag: nil)
        @tag = tag
      end
    end


    class Director < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :tag, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('tag') } }


      sig { params(tag: T.nilable(String)).void }
      def initialize(tag: nil)
        @tag = tag
      end
    end


    class Writer < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :tag, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('tag') } }


      sig { params(tag: T.nilable(String)).void }
      def initialize(tag: nil)
        @tag = tag
      end
    end


    class Country < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :tag, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('tag') } }


      sig { params(tag: T.nilable(String)).void }
      def initialize(tag: nil)
        @tag = tag
      end
    end


    class Role < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :tag, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('tag') } }


      sig { params(tag: T.nilable(String)).void }
      def initialize(tag: nil)
        @tag = tag
      end
    end


    class Metadata < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :added_at, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('addedAt') } }

      field :allow_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('allowSync') } }

      field :art, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('art') } }

      field :audience_rating, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('audienceRating') } }

      field :audience_rating_image, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('audienceRatingImage') } }

      field :chapter_source, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('chapterSource') } }

      field :content_rating, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('contentRating') } }

      field :country, T.nilable(T::Array[Operations::Country]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('Country') } }

      field :director, T.nilable(T::Array[Operations::Director]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('Director') } }

      field :duration, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('duration') } }

      field :genre, T.nilable(T::Array[Operations::Genre]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('Genre') } }

      field :guid, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('guid') } }

      field :key, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('key') } }

      field :library_section_id, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('librarySectionID') } }

      field :library_section_title, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('librarySectionTitle') } }

      field :library_section_uuid, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('librarySectionUUID') } }

      field :media, T.nilable(T::Array[Operations::Media]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('Media') } }

      field :originally_available_at, T.nilable(DateTime), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('originallyAvailableAt'), 'decoder': Utils.datetime_from_iso_format(true) } }

      field :primary_extra_key, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('primaryExtraKey') } }

      field :rating, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('rating') } }

      field :rating_image, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('ratingImage') } }

      field :rating_key, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('ratingKey') } }

      field :role, T.nilable(T::Array[Operations::Role]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('Role') } }

      field :studio, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('studio') } }

      field :summary, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('summary') } }

      field :tagline, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('tagline') } }

      field :thumb, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('thumb') } }

      field :title, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('title') } }

      field :type, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('type') } }

      field :updated_at, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('updatedAt') } }

      field :writer, T.nilable(T::Array[Operations::Writer]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('Writer') } }

      field :year, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('year') } }


      sig { params(added_at: T.nilable(Float), allow_sync: T.nilable(T::Boolean), art: T.nilable(String), audience_rating: T.nilable(Float), audience_rating_image: T.nilable(String), chapter_source: T.nilable(String), content_rating: T.nilable(String), country: T.nilable(T::Array[Operations::Country]), director: T.nilable(T::Array[Operations::Director]), duration: T.nilable(Float), genre: T.nilable(T::Array[Operations::Genre]), guid: T.nilable(String), key: T.nilable(String), library_section_id: T.nilable(Float), library_section_title: T.nilable(String), library_section_uuid: T.nilable(String), media: T.nilable(T::Array[Operations::Media]), originally_available_at: T.nilable(DateTime), primary_extra_key: T.nilable(String), rating: T.nilable(Float), rating_image: T.nilable(String), rating_key: T.nilable(Float), role: T.nilable(T::Array[Operations::Role]), studio: T.nilable(String), summary: T.nilable(String), tagline: T.nilable(String), thumb: T.nilable(String), title: T.nilable(String), type: T.nilable(String), updated_at: T.nilable(Float), writer: T.nilable(T::Array[Operations::Writer]), year: T.nilable(Float)).void }
      def initialize(added_at: nil, allow_sync: nil, art: nil, audience_rating: nil, audience_rating_image: nil, chapter_source: nil, content_rating: nil, country: nil, director: nil, duration: nil, genre: nil, guid: nil, key: nil, library_section_id: nil, library_section_title: nil, library_section_uuid: nil, media: nil, originally_available_at: nil, primary_extra_key: nil, rating: nil, rating_image: nil, rating_key: nil, role: nil, studio: nil, summary: nil, tagline: nil, thumb: nil, title: nil, type: nil, updated_at: nil, writer: nil, year: nil)
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
        @primary_extra_key = primary_extra_key
        @rating = rating
        @rating_image = rating_image
        @rating_key = rating_key
        @role = role
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
    end


    class GetRecentlyAddedMediaContainer < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :allow_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('allowSync') } }

      field :identifier, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('identifier') } }

      field :media_tag_prefix, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('mediaTagPrefix') } }

      field :media_tag_version, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('mediaTagVersion') } }

      field :metadata, T.nilable(T::Array[Operations::Metadata]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('Metadata') } }

      field :mixed_parents, T.nilable(T::Boolean), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('mixedParents') } }

      field :size, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('size') } }


      sig { params(allow_sync: T.nilable(T::Boolean), identifier: T.nilable(String), media_tag_prefix: T.nilable(String), media_tag_version: T.nilable(Float), metadata: T.nilable(T::Array[Operations::Metadata]), mixed_parents: T.nilable(T::Boolean), size: T.nilable(Float)).void }
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

    # The recently added content
    class GetRecentlyAddedResponseBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :media_container, T.nilable(Operations::GetRecentlyAddedMediaContainer), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('MediaContainer') } }


      sig { params(media_container: T.nilable(Operations::GetRecentlyAddedMediaContainer)).void }
      def initialize(media_container: nil)
        @media_container = media_container
      end
    end


    class GetRecentlyAddedResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # The recently added content
      field :two_hundred_application_json_object, T.nilable(Operations::GetRecentlyAddedResponseBody)
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :four_hundred_and_one_application_json_object, T.nilable(Operations::GetRecentlyAddedLibraryResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, two_hundred_application_json_object: T.nilable(Operations::GetRecentlyAddedResponseBody), four_hundred_and_one_application_json_object: T.nilable(Operations::GetRecentlyAddedLibraryResponseBody)).void }
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