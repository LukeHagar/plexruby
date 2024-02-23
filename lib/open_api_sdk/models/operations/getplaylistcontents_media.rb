# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetPlaylistContentsMedia < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :aspect_ratio, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('aspectRatio') } }

      field :audio_channels, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('audioChannels') } }

      field :audio_codec, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('audioCodec') } }

      field :audio_profile, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('audioProfile') } }

      field :bitrate, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('bitrate') } }

      field :container, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('container') } }

      field :duration, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('duration') } }

      field :has64bit_offsets, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('has64bitOffsets') } }

      field :height, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('height') } }

      field :id, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }

      field :optimized_for_streaming, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('optimizedForStreaming') } }

      field :part, T.nilable(T::Array[::OpenApiSDK::Operations::GetPlaylistContentsPart]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('Part') } }

      field :video_codec, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoCodec') } }

      field :video_frame_rate, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoFrameRate') } }

      field :video_profile, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoProfile') } }

      field :video_resolution, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('videoResolution') } }

      field :width, T.nilable(::Integer), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('width') } }


      sig { params(aspect_ratio: T.nilable(::Float), audio_channels: T.nilable(::Integer), audio_codec: T.nilable(::String), audio_profile: T.nilable(::String), bitrate: T.nilable(::Integer), container: T.nilable(::String), duration: T.nilable(::Integer), has64bit_offsets: T.nilable(T::Boolean), height: T.nilable(::Integer), id: T.nilable(::Integer), optimized_for_streaming: T.nilable(::Integer), part: T.nilable(T::Array[::OpenApiSDK::Operations::GetPlaylistContentsPart]), video_codec: T.nilable(::String), video_frame_rate: T.nilable(::String), video_profile: T.nilable(::String), video_resolution: T.nilable(::String), width: T.nilable(::Integer)).void }
      def initialize(aspect_ratio: nil, audio_channels: nil, audio_codec: nil, audio_profile: nil, bitrate: nil, container: nil, duration: nil, has64bit_offsets: nil, height: nil, id: nil, optimized_for_streaming: nil, part: nil, video_codec: nil, video_frame_rate: nil, video_profile: nil, video_resolution: nil, width: nil)
        @aspect_ratio = aspect_ratio
        @audio_channels = audio_channels
        @audio_codec = audio_codec
        @audio_profile = audio_profile
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
  end
end
