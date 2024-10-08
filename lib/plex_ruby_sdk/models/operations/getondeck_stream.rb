# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetOnDeckStream < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :bit_depth, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bitDepth') } }

      field :bitrate, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bitrate') } }

      field :chroma_location, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('chromaLocation') } }

      field :chroma_subsampling, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('chromaSubsampling') } }

      field :codec, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('codec') } }

      field :coded_height, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('codedHeight') } }

      field :coded_width, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('codedWidth') } }

      field :color_range, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('colorRange') } }

      field :default, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('default') } }

      field :display_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('displayTitle') } }

      field :extended_display_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('extendedDisplayTitle') } }

      field :frame_rate, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('frameRate') } }

      field :height, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('height') } }

      field :id, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }

      field :index, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('index') } }

      field :language, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('language') } }

      field :language_code, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('languageCode') } }

      field :language_tag, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('languageTag') } }

      field :level, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('level') } }

      field :profile, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('profile') } }

      field :ref_frames, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('refFrames') } }

      field :stream_type, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('streamType') } }

      field :width, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('width') } }


      sig { params(bit_depth: T.nilable(::Float), bitrate: T.nilable(::Float), chroma_location: T.nilable(::String), chroma_subsampling: T.nilable(::String), codec: T.nilable(::String), coded_height: T.nilable(::Float), coded_width: T.nilable(::Float), color_range: T.nilable(::String), default: T.nilable(T::Boolean), display_title: T.nilable(::String), extended_display_title: T.nilable(::String), frame_rate: T.nilable(::Float), height: T.nilable(::Float), id: T.nilable(::Float), index: T.nilable(::Float), language: T.nilable(::String), language_code: T.nilable(::String), language_tag: T.nilable(::String), level: T.nilable(::Float), profile: T.nilable(::String), ref_frames: T.nilable(::Float), stream_type: T.nilable(::Float), width: T.nilable(::Float)).void }
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
  end
end
