# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetSessionsStream
        extend T::Sig
        include Crystalline::MetadataFields


        field :album_gain, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('albumGain') } }

        field :album_peak, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('albumPeak') } }

        field :album_range, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('albumRange') } }

        field :audio_channel_layout, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioChannelLayout') } }

        field :bit_depth, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bitDepth') } }

        field :bitrate, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bitrate') } }

        field :channels, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('channels') } }

        field :codec, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('codec') } }

        field :display_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('displayTitle') } }

        field :extended_display_title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('extendedDisplayTitle') } }

        field :gain, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('gain') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }

        field :index, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('index') } }

        field :location, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('location') } }

        field :loudness, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('loudness') } }

        field :lra, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('lra') } }

        field :peak, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('peak') } }

        field :sampling_rate, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('samplingRate') } }

        field :selected, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('selected') } }

        field :stream_type, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('streamType') } }


        sig { params(album_gain: T.nilable(::String), album_peak: T.nilable(::String), album_range: T.nilable(::String), audio_channel_layout: T.nilable(::String), bit_depth: T.nilable(::Integer), bitrate: T.nilable(::Integer), channels: T.nilable(::Integer), codec: T.nilable(::String), display_title: T.nilable(::String), extended_display_title: T.nilable(::String), gain: T.nilable(::String), id: T.nilable(::String), index: T.nilable(::Integer), location: T.nilable(::String), loudness: T.nilable(::String), lra: T.nilable(::String), peak: T.nilable(::String), sampling_rate: T.nilable(::Integer), selected: T.nilable(T::Boolean), stream_type: T.nilable(::Integer)).void }
        def initialize(album_gain: nil, album_peak: nil, album_range: nil, audio_channel_layout: nil, bit_depth: nil, bitrate: nil, channels: nil, codec: nil, display_title: nil, extended_display_title: nil, gain: nil, id: nil, index: nil, location: nil, loudness: nil, lra: nil, peak: nil, sampling_rate: nil, selected: nil, stream_type: nil)
          @album_gain = album_gain
          @album_peak = album_peak
          @album_range = album_range
          @audio_channel_layout = audio_channel_layout
          @bit_depth = bit_depth
          @bitrate = bitrate
          @channels = channels
          @codec = codec
          @display_title = display_title
          @extended_display_title = extended_display_title
          @gain = gain
          @id = id
          @index = index
          @location = location
          @loudness = loudness
          @lra = lra
          @peak = peak
          @sampling_rate = sampling_rate
          @selected = selected
          @stream_type = stream_type
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @album_gain == other.album_gain
          return false unless @album_peak == other.album_peak
          return false unless @album_range == other.album_range
          return false unless @audio_channel_layout == other.audio_channel_layout
          return false unless @bit_depth == other.bit_depth
          return false unless @bitrate == other.bitrate
          return false unless @channels == other.channels
          return false unless @codec == other.codec
          return false unless @display_title == other.display_title
          return false unless @extended_display_title == other.extended_display_title
          return false unless @gain == other.gain
          return false unless @id == other.id
          return false unless @index == other.index
          return false unless @location == other.location
          return false unless @loudness == other.loudness
          return false unless @lra == other.lra
          return false unless @peak == other.peak
          return false unless @sampling_rate == other.sampling_rate
          return false unless @selected == other.selected
          return false unless @stream_type == other.stream_type
          true
        end
      end
    end
  end
end
