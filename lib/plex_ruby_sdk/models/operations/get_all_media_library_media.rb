# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetAllMediaLibraryMedia < ::Crystalline::FieldAugmented
      extend T::Sig

      # Unique media identifier.
      field :id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }
      # Aspect ratio of the video.
      field :aspect_ratio, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('aspectRatio') } }
      # Number of audio channels.
      field :audio_channels, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioChannels') } }
      # Audio codec used.
      field :audio_codec, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioCodec') } }
      # The audio profile used for the media (e.g., DTS, Dolby Digital, etc.).
      field :audio_profile, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioProfile') } }
      # Bitrate in bits per second.
      field :bitrate, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bitrate') } }
      # File container type.
      field :container, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('container') } }

      field :display_offset, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('displayOffset') } }
      # Duration of the media in milliseconds.
      field :duration, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('duration') } }

      field :has64bit_offsets, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('has64bitOffsets') } }
      # Indicates whether voice activity is detected.
      field :has_voice_activity, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hasVoiceActivity') } }
      # Video height in pixels.
      field :height, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('height') } }
      # Has this media been optimized for streaming. NOTE: This can be 0, 1, false or true
      field :optimized_for_streaming, T.nilable(::Object), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('optimizedForStreaming') } }
      # An array of parts for this media item.
      field :part, T.nilable(T::Array[::PlexRubySDK::Operations::GetAllMediaLibraryPart]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Part') } }
      # Video codec used.
      field :video_codec, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoCodec') } }
      # Frame rate of the video. Values found include NTSC, PAL, 24p
      # 
      field :video_frame_rate, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoFrameRate') } }
      # Video profile (e.g., main 10).
      field :video_profile, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoProfile') } }
      # Video resolution (e.g., 4k).
      field :video_resolution, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoResolution') } }
      # Video width in pixels.
      field :width, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('width') } }


      sig { params(id: ::Integer, aspect_ratio: T.nilable(::Float), audio_channels: T.nilable(::Integer), audio_codec: T.nilable(::String), audio_profile: T.nilable(::String), bitrate: T.nilable(::Integer), container: T.nilable(::String), display_offset: T.nilable(::Integer), duration: T.nilable(::Integer), has64bit_offsets: T.nilable(T::Boolean), has_voice_activity: T.nilable(T::Boolean), height: T.nilable(::Integer), optimized_for_streaming: T.nilable(::Object), part: T.nilable(T::Array[::PlexRubySDK::Operations::GetAllMediaLibraryPart]), video_codec: T.nilable(::String), video_frame_rate: T.nilable(::String), video_profile: T.nilable(::String), video_resolution: T.nilable(::String), width: T.nilable(::Integer)).void }
      def initialize(id: nil, aspect_ratio: nil, audio_channels: nil, audio_codec: nil, audio_profile: nil, bitrate: nil, container: nil, display_offset: nil, duration: nil, has64bit_offsets: nil, has_voice_activity: nil, height: nil, optimized_for_streaming: nil, part: nil, video_codec: nil, video_frame_rate: nil, video_profile: nil, video_resolution: nil, width: nil)
        @id = id
        @aspect_ratio = aspect_ratio
        @audio_channels = audio_channels
        @audio_codec = audio_codec
        @audio_profile = audio_profile
        @bitrate = bitrate
        @container = container
        @display_offset = display_offset
        @duration = duration
        @has64bit_offsets = has64bit_offsets
        @has_voice_activity = has_voice_activity
        @height = height
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
