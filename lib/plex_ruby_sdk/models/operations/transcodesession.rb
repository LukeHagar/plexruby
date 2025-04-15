# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class TranscodeSession
        extend T::Sig
        include Crystalline::MetadataFields


        field :audio_channels, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioChannels') } }

        field :audio_codec, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioCodec') } }

        field :audio_decision, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioDecision') } }

        field :complete, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('complete') } }

        field :container, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('container') } }

        field :context, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('context') } }

        field :duration, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('duration') } }

        field :error, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('error') } }

        field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

        field :max_offset_available, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('maxOffsetAvailable') } }

        field :min_offset_available, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('minOffsetAvailable') } }

        field :progress, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('progress') } }

        field :protocol, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('protocol') } }

        field :remaining, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('remaining') } }

        field :size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }

        field :source_audio_codec, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('sourceAudioCodec') } }

        field :source_video_codec, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('sourceVideoCodec') } }

        field :speed, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('speed') } }

        field :subtitle_decision, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('subtitleDecision') } }

        field :throttled, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('throttled') } }

        field :time_stamp, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('timeStamp') } }

        field :transcode_hw_requested, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('transcodeHwRequested') } }

        field :video_codec, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoCodec') } }

        field :video_decision, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoDecision') } }


        sig { params(audio_channels: T.nilable(::Integer), audio_codec: T.nilable(::String), audio_decision: T.nilable(::String), complete: T.nilable(T::Boolean), container: T.nilable(::String), context: T.nilable(::String), duration: T.nilable(::Integer), error: T.nilable(T::Boolean), key: T.nilable(::String), max_offset_available: T.nilable(::Float), min_offset_available: T.nilable(::Float), progress: T.nilable(::Float), protocol: T.nilable(::String), remaining: T.nilable(::Integer), size: T.nilable(::Integer), source_audio_codec: T.nilable(::String), source_video_codec: T.nilable(::String), speed: T.nilable(::Float), subtitle_decision: T.nilable(::String), throttled: T.nilable(T::Boolean), time_stamp: T.nilable(::Float), transcode_hw_requested: T.nilable(T::Boolean), video_codec: T.nilable(::String), video_decision: T.nilable(::String)).void }
        def initialize(audio_channels: nil, audio_codec: nil, audio_decision: nil, complete: nil, container: nil, context: nil, duration: nil, error: nil, key: nil, max_offset_available: nil, min_offset_available: nil, progress: nil, protocol: nil, remaining: nil, size: nil, source_audio_codec: nil, source_video_codec: nil, speed: nil, subtitle_decision: nil, throttled: nil, time_stamp: nil, transcode_hw_requested: nil, video_codec: nil, video_decision: nil)
          @audio_channels = audio_channels
          @audio_codec = audio_codec
          @audio_decision = audio_decision
          @complete = complete
          @container = container
          @context = context
          @duration = duration
          @error = error
          @key = key
          @max_offset_available = max_offset_available
          @min_offset_available = min_offset_available
          @progress = progress
          @protocol = protocol
          @remaining = remaining
          @size = size
          @source_audio_codec = source_audio_codec
          @source_video_codec = source_video_codec
          @speed = speed
          @subtitle_decision = subtitle_decision
          @throttled = throttled
          @time_stamp = time_stamp
          @transcode_hw_requested = transcode_hw_requested
          @video_codec = video_codec
          @video_decision = video_decision
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @audio_channels == other.audio_channels
          return false unless @audio_codec == other.audio_codec
          return false unless @audio_decision == other.audio_decision
          return false unless @complete == other.complete
          return false unless @container == other.container
          return false unless @context == other.context
          return false unless @duration == other.duration
          return false unless @error == other.error
          return false unless @key == other.key
          return false unless @max_offset_available == other.max_offset_available
          return false unless @min_offset_available == other.min_offset_available
          return false unless @progress == other.progress
          return false unless @protocol == other.protocol
          return false unless @remaining == other.remaining
          return false unless @size == other.size
          return false unless @source_audio_codec == other.source_audio_codec
          return false unless @source_video_codec == other.source_video_codec
          return false unless @speed == other.speed
          return false unless @subtitle_decision == other.subtitle_decision
          return false unless @throttled == other.throttled
          return false unless @time_stamp == other.time_stamp
          return false unless @transcode_hw_requested == other.transcode_hw_requested
          return false unless @video_codec == other.video_codec
          return false unless @video_decision == other.video_decision
          true
        end
      end
    end
  end
end
