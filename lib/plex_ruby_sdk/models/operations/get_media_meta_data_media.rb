# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetMediaMetaDataMedia < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # Aspect ratio of the video.
      field :aspect_ratio, ::Float, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('aspectRatio') } }
      # Number of audio channels.
      field :audio_channels, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioChannels') } }
      # Audio codec used.
      field :audio_codec, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioCodec') } }
      # Bitrate in bits per second.
      field :bitrate, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bitrate') } }
      # File container type.
      field :container, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('container') } }
      # Duration of the media in milliseconds.
      field :duration, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('duration') } }
      # Indicates whether voice activity is detected.
      field :has_voice_activity, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hasVoiceActivity') } }
      # Video height in pixels.
      field :height, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('height') } }
      # Unique media identifier.
      field :id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }
      # An array of parts for this media item.
      field :part, T::Array[::PlexRubySDK::Operations::GetMediaMetaDataPart], { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Part') } }
      # Video codec used.
      field :video_codec, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoCodec') } }
      # Frame rate of the video (e.g., 24p).
      field :video_frame_rate, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoFrameRate') } }
      # Video profile (e.g., main 10).
      field :video_profile, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoProfile') } }
      # Video resolution (e.g., 4k).
      field :video_resolution, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoResolution') } }
      # Video width in pixels.
      field :width, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('width') } }


      sig { params(aspect_ratio: ::Float, audio_channels: ::Integer, audio_codec: ::String, bitrate: ::Integer, container: ::String, duration: ::Integer, has_voice_activity: T::Boolean, height: ::Integer, id: ::Integer, part: T::Array[::PlexRubySDK::Operations::GetMediaMetaDataPart], video_codec: ::String, video_frame_rate: ::String, video_profile: ::String, video_resolution: ::String, width: ::Integer).void }
      def initialize(aspect_ratio: nil, audio_channels: nil, audio_codec: nil, bitrate: nil, container: nil, duration: nil, has_voice_activity: nil, height: nil, id: nil, part: nil, video_codec: nil, video_frame_rate: nil, video_profile: nil, video_resolution: nil, width: nil)
        @aspect_ratio = aspect_ratio
        @audio_channels = audio_channels
        @audio_codec = audio_codec
        @bitrate = bitrate
        @container = container
        @duration = duration
        @has_voice_activity = has_voice_activity
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
