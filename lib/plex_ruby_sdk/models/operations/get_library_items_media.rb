# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetLibraryItemsMedia < ::Crystalline::FieldAugmented
      extend T::Sig


      field :container, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('container') } }

      field :id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }

      field :part, T::Array[::PlexRubySDK::Operations::GetLibraryItemsPart], { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Part') } }

      field :aspect_ratio, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('aspectRatio') } }

      field :audio_channels, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioChannels') } }

      field :audio_codec, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioCodec') } }

      field :audio_profile, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioProfile') } }

      field :bitrate, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bitrate') } }

      field :duration, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('duration') } }

      field :has64bit_offsets, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('has64bitOffsets') } }

      field :has_voice_activity, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hasVoiceActivity') } }

      field :height, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('height') } }

      field :optimized_for_streaming, T.nilable(::PlexRubySDK::Operations::GetLibraryItemsOptimizedForStreaming), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('optimizedForStreaming'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::GetLibraryItemsOptimizedForStreaming, true) } }

      field :video_codec, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoCodec') } }

      field :video_frame_rate, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoFrameRate') } }

      field :video_profile, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoProfile') } }

      field :video_resolution, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoResolution') } }

      field :width, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('width') } }


      sig { params(container: ::String, id: ::Integer, part: T::Array[::PlexRubySDK::Operations::GetLibraryItemsPart], aspect_ratio: T.nilable(::Float), audio_channels: T.nilable(::Integer), audio_codec: T.nilable(::String), audio_profile: T.nilable(::String), bitrate: T.nilable(::Integer), duration: T.nilable(::Integer), has64bit_offsets: T.nilable(T::Boolean), has_voice_activity: T.nilable(T::Boolean), height: T.nilable(::Integer), optimized_for_streaming: T.nilable(::PlexRubySDK::Operations::GetLibraryItemsOptimizedForStreaming), video_codec: T.nilable(::String), video_frame_rate: T.nilable(::String), video_profile: T.nilable(::String), video_resolution: T.nilable(::String), width: T.nilable(::Integer)).void }
      def initialize(container: nil, id: nil, part: nil, aspect_ratio: nil, audio_channels: nil, audio_codec: nil, audio_profile: nil, bitrate: nil, duration: nil, has64bit_offsets: nil, has_voice_activity: nil, height: nil, optimized_for_streaming: nil, video_codec: nil, video_frame_rate: nil, video_profile: nil, video_resolution: nil, width: nil)
        @container = container
        @id = id
        @part = part
        @aspect_ratio = aspect_ratio
        @audio_channels = audio_channels
        @audio_codec = audio_codec
        @audio_profile = audio_profile
        @bitrate = bitrate
        @duration = duration
        @has64bit_offsets = has64bit_offsets
        @has_voice_activity = has_voice_activity
        @height = height
        @optimized_for_streaming = optimized_for_streaming
        @video_codec = video_codec
        @video_frame_rate = video_frame_rate
        @video_profile = video_profile
        @video_resolution = video_resolution
        @width = width
      end
    end
  end
end
