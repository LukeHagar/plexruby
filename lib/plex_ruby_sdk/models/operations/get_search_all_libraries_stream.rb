# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetSearchAllLibrariesStream < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # Codec used by the stream
      field :codec, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('codec') } }

      field :id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }
      # The index of the stream
      field :index, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('index') } }
      # Type of stream (1 = video, 2 = audio, 3 = subtitle)
      field :stream_type, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('streamType') } }
      # The audio channel layout
      field :audio_channel_layout, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioChannelLayout') } }
      # The bit depth of the video stream
      field :bit_depth, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bitDepth') } }
      # The bitrate of the stream in kbps
      field :bitrate, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bitrate') } }
      # Indicates if the subtitle stream can auto-sync
      field :can_auto_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('canAutoSync') } }
      # Number of audio channels (for audio streams)
      field :channels, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('channels') } }
      # The chroma location of the video stream
      field :chroma_location, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('chromaLocation') } }
      # The chroma subsampling format
      field :chroma_subsampling, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('chromaSubsampling') } }

      field :closed_captions, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('closedCaptions') } }
      # The coded height of the video stream
      field :coded_height, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('codedHeight') } }
      # The coded width of the video stream
      field :coded_width, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('codedWidth') } }
      # The color primaries of the video stream
      field :color_primaries, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('colorPrimaries') } }
      # The color range of the video stream
      field :color_range, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('colorRange') } }
      # The color space of the video stream
      field :color_space, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('colorSpace') } }
      # The transfer characteristics (TRC) of the video stream
      field :color_trc, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('colorTrc') } }
      # Indicates if this is the default stream
      field :default, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('default') } }
      # Display title of the stream
      field :display_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('displayTitle') } }

      field :embedded_in_video, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('embeddedInVideo') } }
      # Extended display title of the stream
      field :extended_display_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('extendedDisplayTitle') } }
      # The frame rate of the video stream
      field :frame_rate, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('frameRate') } }
      # Indicates if the stream has a scaling matrix
      field :has_scaling_matrix, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hasScalingMatrix') } }

      field :hearing_impaired, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hearingImpaired') } }
      # The height of the video stream
      field :height, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('height') } }
      # The language of the stream (for audio/subtitle streams)
      field :language, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('language') } }
      # Language code of the stream
      field :language_code, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('languageCode') } }
      # Language tag of the stream
      field :language_tag, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('languageTag') } }
      # The level of the video codec
      field :level, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('level') } }
      # The profile of the video codec
      field :profile, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('profile') } }
      # Number of reference frames
      field :ref_frames, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('refFrames') } }
      # Sampling rate of the audio stream in Hz
      field :sampling_rate, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('samplingRate') } }
      # The scan type (progressive or interlaced)
      field :scan_type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('scanType') } }
      # Indicates if the stream is selected
      field :selected, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('selected') } }
      # The identifier of the video stream
      field :stream_identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('streamIdentifier') } }
      # Title of the subtitle track (for subtitle streams)
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }
      # The width of the video stream
      field :width, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('width') } }


      sig { params(codec: ::String, id: ::Integer, index: ::Integer, stream_type: ::Integer, audio_channel_layout: T.nilable(::String), bit_depth: T.nilable(::Integer), bitrate: T.nilable(::Integer), can_auto_sync: T.nilable(T::Boolean), channels: T.nilable(::Integer), chroma_location: T.nilable(::String), chroma_subsampling: T.nilable(::String), closed_captions: T.nilable(T::Boolean), coded_height: T.nilable(::Integer), coded_width: T.nilable(::Integer), color_primaries: T.nilable(::String), color_range: T.nilable(::String), color_space: T.nilable(::String), color_trc: T.nilable(::String), default: T.nilable(T::Boolean), display_title: T.nilable(::String), embedded_in_video: T.nilable(::String), extended_display_title: T.nilable(::String), frame_rate: T.nilable(::Float), has_scaling_matrix: T.nilable(T::Boolean), hearing_impaired: T.nilable(T::Boolean), height: T.nilable(::Integer), language: T.nilable(::String), language_code: T.nilable(::String), language_tag: T.nilable(::String), level: T.nilable(::Integer), profile: T.nilable(::String), ref_frames: T.nilable(::Integer), sampling_rate: T.nilable(::Integer), scan_type: T.nilable(::String), selected: T.nilable(T::Boolean), stream_identifier: T.nilable(::String), title: T.nilable(::String), width: T.nilable(::Integer)).void }
      def initialize(codec: nil, id: nil, index: nil, stream_type: nil, audio_channel_layout: nil, bit_depth: nil, bitrate: nil, can_auto_sync: nil, channels: nil, chroma_location: nil, chroma_subsampling: nil, closed_captions: nil, coded_height: nil, coded_width: nil, color_primaries: nil, color_range: nil, color_space: nil, color_trc: nil, default: nil, display_title: nil, embedded_in_video: nil, extended_display_title: nil, frame_rate: nil, has_scaling_matrix: nil, hearing_impaired: nil, height: nil, language: nil, language_code: nil, language_tag: nil, level: nil, profile: nil, ref_frames: nil, sampling_rate: nil, scan_type: nil, selected: nil, stream_identifier: nil, title: nil, width: nil)
        @codec = codec
        @id = id
        @index = index
        @stream_type = stream_type
        @audio_channel_layout = audio_channel_layout
        @bit_depth = bit_depth
        @bitrate = bitrate
        @can_auto_sync = can_auto_sync
        @channels = channels
        @chroma_location = chroma_location
        @chroma_subsampling = chroma_subsampling
        @closed_captions = closed_captions
        @coded_height = coded_height
        @coded_width = coded_width
        @color_primaries = color_primaries
        @color_range = color_range
        @color_space = color_space
        @color_trc = color_trc
        @default = default
        @display_title = display_title
        @embedded_in_video = embedded_in_video
        @extended_display_title = extended_display_title
        @frame_rate = frame_rate
        @has_scaling_matrix = has_scaling_matrix
        @hearing_impaired = hearing_impaired
        @height = height
        @language = language
        @language_code = language_code
        @language_tag = language_tag
        @level = level
        @profile = profile
        @ref_frames = ref_frames
        @sampling_rate = sampling_rate
        @scan_type = scan_type
        @selected = selected
        @stream_identifier = stream_identifier
        @title = title
        @width = width
      end
    end
  end
end
