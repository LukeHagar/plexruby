# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetSearchResultsMedia < ::Crystalline::FieldAugmented
      extend T::Sig


      field :aspect_ratio, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('aspectRatio') } }

      field :audio_channels, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioChannels') } }

      field :audio_codec, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioCodec') } }

      field :audio_profile, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioProfile') } }

      field :bitrate, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bitrate') } }

      field :container, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('container') } }

      field :duration, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('duration') } }

      field :height, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('height') } }

      field :id, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }

      field :part, T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsPart]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Part') } }

      field :video_codec, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoCodec') } }

      field :video_frame_rate, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoFrameRate') } }

      field :video_profile, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoProfile') } }

      field :video_resolution, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoResolution') } }

      field :width, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('width') } }


      sig { params(aspect_ratio: T.nilable(::Float), audio_channels: T.nilable(::Float), audio_codec: T.nilable(::String), audio_profile: T.nilable(::String), bitrate: T.nilable(::Float), container: T.nilable(::String), duration: T.nilable(::Float), height: T.nilable(::Float), id: T.nilable(::Float), part: T.nilable(T::Array[::PlexRubySDK::Operations::GetSearchResultsPart]), video_codec: T.nilable(::String), video_frame_rate: T.nilable(::String), video_profile: T.nilable(::String), video_resolution: T.nilable(::Float), width: T.nilable(::Float)).void }
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
  end
end
