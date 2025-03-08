# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetRecentlyAddedLibraryPart < ::Crystalline::FieldAugmented
      extend T::Sig


      field :container, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('container') } }

      field :duration, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('duration') } }

      field :file, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('file') } }

      field :has64bit_offsets, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('has64bitOffsets') } }

      field :has_thumbnail, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hasThumbnail') } }

      field :id, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }

      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :optimized_for_streaming, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('optimizedForStreaming') } }

      field :size, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }

      field :video_profile, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoProfile') } }


      sig { params(container: T.nilable(::String), duration: T.nilable(::Float), file: T.nilable(::String), has64bit_offsets: T.nilable(T::Boolean), has_thumbnail: T.nilable(::Float), id: T.nilable(::Float), key: T.nilable(::String), optimized_for_streaming: T.nilable(T::Boolean), size: T.nilable(::Float), video_profile: T.nilable(::String)).void }
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
  end
end
