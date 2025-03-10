# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetMediaMetaDataStream < ::Crystalline::FieldAugmented
      extend T::Sig

      # Codec used by the stream.
      field :codec, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('codec') } }
      # Display title for the stream.
      field :display_title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('displayTitle') } }
      # Extended display title for the stream.
      field :extended_display_title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('extendedDisplayTitle') } }
      # Unique stream identifier.
      field :id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }
      # Index of the stream.
      field :index, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('index') } }
      # Stream type (1=video, 2=audio, 3=subtitle).
      field :stream_type, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('streamType') } }
      # Audio channel layout.
      field :audio_channel_layout, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioChannelLayout') } }
      # Bit depth of the video stream.
      field :bit_depth, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bitDepth') } }
      # Bitrate of the stream.
      field :bitrate, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bitrate') } }
      # Indicates if the stream can auto-sync.
      field :can_auto_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('canAutoSync') } }
      # Number of audio channels (for audio streams).
      field :channels, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('channels') } }
      # Chroma sample location.
      field :chroma_location, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('chromaLocation') } }
      # Chroma subsampling format.
      field :chroma_subsampling, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('chromaSubsampling') } }

      field :closed_captions, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('closedCaptions') } }
      # Coded video height.
      field :coded_height, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('codedHeight') } }
      # Coded video width.
      field :coded_width, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('codedWidth') } }
      # Color primaries used.
      field :color_primaries, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('colorPrimaries') } }
      # Color range (e.g., tv).
      field :color_range, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('colorRange') } }
      # Color space.
      field :color_space, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('colorSpace') } }
      # Color transfer characteristics.
      field :color_trc, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('colorTrc') } }
      # Indicates if this stream is default.
      field :default, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('default') } }
      # Dolby Vision BL compatibility ID.
      field :dovibl_compat_id, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('DOVIBLCompatID') } }
      # Indicates if Dolby Vision BL is present.
      field :dovibl_present, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('DOVIBLPresent') } }
      # Indicates if Dolby Vision EL is present.
      field :doviel_present, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('DOVIELPresent') } }
      # Dolby Vision level.
      field :dovi_level, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('DOVILevel') } }
      # Indicates if Dolby Vision is present.
      field :dovi_present, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('DOVIPresent') } }
      # Dolby Vision profile.
      field :dovi_profile, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('DOVIProfile') } }
      # Indicates if Dolby Vision RPU is present.
      field :dovirpu_present, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('DOVIRPUPresent') } }
      # Dolby Vision version.
      field :dovi_version, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('DOVIVersion') } }
      # Indicates if the stream is a dub.
      field :dub, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('dub') } }

      field :embedded_in_video, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('embeddedInVideo') } }

      field :forced, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('forced') } }
      # Frame rate of the stream.
      field :frame_rate, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('frameRate') } }

      field :has_scaling_matrix, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hasScalingMatrix') } }
      # Indicates whether header compression is enabled.
      field :header_compression, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('headerCompression') } }
      # Indicates if the stream is for the hearing impaired.
      field :hearing_impaired, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hearingImpaired') } }
      # Height of the video stream.
      field :height, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('height') } }
      # Language of the stream.
      field :language, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('language') } }
      # ISO language code.
      field :language_code, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('languageCode') } }
      # Language tag (e.g., en).
      field :language_tag, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('languageTag') } }
      # Video level.
      field :level, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('level') } }
      # Indicates if this is the original stream.
      field :original, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('original') } }
      # Video profile.
      field :profile, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('profile') } }
      # Number of reference frames.
      field :ref_frames, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('refFrames') } }
      # Sampling rate for the audio stream.
      field :sampling_rate, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('samplingRate') } }

      field :scan_type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('scanType') } }
      # Indicates if this stream is selected (applicable for audio streams).
      field :selected, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('selected') } }
      # Optional title for the stream (e.g., language variant).
      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }
      # Width of the video stream.
      field :width, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('width') } }


      sig { params(codec: ::String, display_title: ::String, extended_display_title: ::String, id: ::Integer, index: ::Integer, stream_type: ::Integer, audio_channel_layout: T.nilable(::String), bit_depth: T.nilable(::Integer), bitrate: T.nilable(::Integer), can_auto_sync: T.nilable(T::Boolean), channels: T.nilable(::Integer), chroma_location: T.nilable(::String), chroma_subsampling: T.nilable(::String), closed_captions: T.nilable(T::Boolean), coded_height: T.nilable(::Integer), coded_width: T.nilable(::Integer), color_primaries: T.nilable(::String), color_range: T.nilable(::String), color_space: T.nilable(::String), color_trc: T.nilable(::String), default: T.nilable(T::Boolean), dovibl_compat_id: T.nilable(::Integer), dovibl_present: T.nilable(T::Boolean), doviel_present: T.nilable(T::Boolean), dovi_level: T.nilable(::Integer), dovi_present: T.nilable(T::Boolean), dovi_profile: T.nilable(::Integer), dovirpu_present: T.nilable(T::Boolean), dovi_version: T.nilable(::String), dub: T.nilable(T::Boolean), embedded_in_video: T.nilable(::String), forced: T.nilable(T::Boolean), frame_rate: T.nilable(::Float), has_scaling_matrix: T.nilable(T::Boolean), header_compression: T.nilable(T::Boolean), hearing_impaired: T.nilable(T::Boolean), height: T.nilable(::Integer), language: T.nilable(::String), language_code: T.nilable(::String), language_tag: T.nilable(::String), level: T.nilable(::Integer), original: T.nilable(T::Boolean), profile: T.nilable(::String), ref_frames: T.nilable(::Integer), sampling_rate: T.nilable(::Integer), scan_type: T.nilable(::String), selected: T.nilable(T::Boolean), title: T.nilable(::String), width: T.nilable(::Integer)).void }
      def initialize(codec: nil, display_title: nil, extended_display_title: nil, id: nil, index: nil, stream_type: nil, audio_channel_layout: nil, bit_depth: nil, bitrate: nil, can_auto_sync: nil, channels: nil, chroma_location: nil, chroma_subsampling: nil, closed_captions: nil, coded_height: nil, coded_width: nil, color_primaries: nil, color_range: nil, color_space: nil, color_trc: nil, default: nil, dovibl_compat_id: nil, dovibl_present: nil, doviel_present: nil, dovi_level: nil, dovi_present: nil, dovi_profile: nil, dovirpu_present: nil, dovi_version: nil, dub: nil, embedded_in_video: nil, forced: nil, frame_rate: nil, has_scaling_matrix: nil, header_compression: nil, hearing_impaired: nil, height: nil, language: nil, language_code: nil, language_tag: nil, level: nil, original: nil, profile: nil, ref_frames: nil, sampling_rate: nil, scan_type: nil, selected: nil, title: nil, width: nil)
        @codec = codec
        @display_title = display_title
        @extended_display_title = extended_display_title
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
        @dovibl_compat_id = dovibl_compat_id
        @dovibl_present = dovibl_present
        @doviel_present = doviel_present
        @dovi_level = dovi_level
        @dovi_present = dovi_present
        @dovi_profile = dovi_profile
        @dovirpu_present = dovirpu_present
        @dovi_version = dovi_version
        @dub = dub
        @embedded_in_video = embedded_in_video
        @forced = forced
        @frame_rate = frame_rate
        @has_scaling_matrix = has_scaling_matrix
        @header_compression = header_compression
        @hearing_impaired = hearing_impaired
        @height = height
        @language = language
        @language_code = language_code
        @language_tag = language_tag
        @level = level
        @original = original
        @profile = profile
        @ref_frames = ref_frames
        @sampling_rate = sampling_rate
        @scan_type = scan_type
        @selected = selected
        @title = title
        @width = width
      end
    end
  end
end
