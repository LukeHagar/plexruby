# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetAllMediaLibraryPart < ::Crystalline::FieldAugmented
      extend T::Sig

      # File path for the part.
      field :file, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('file') } }
      # Unique part identifier.
      field :id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }
      # Key to access this part.
      field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }
      # File size in bytes.
      field :size, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }
      # Indicates if the part is accessible.
      field :accessible, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('accessible') } }
      # The audio profile used for the media (e.g., DTS, Dolby Digital, etc.).
      field :audio_profile, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('audioProfile') } }
      # Container format of the part.
      field :container, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('container') } }
      # Duration of the part in milliseconds.
      field :duration, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('duration') } }
      # Indicates if the part exists.
      field :exists, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('exists') } }

      field :has64bit_offsets, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('has64bitOffsets') } }

      field :has_thumbnail, T.nilable(::PlexRubySDK::Operations::GetAllMediaLibraryHasThumbnail), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hasThumbnail'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::GetAllMediaLibraryHasThumbnail, true) } }

      field :indexes, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('indexes') } }
      # Has this media been optimized for streaming. NOTE: This can be 0, 1, false or true
      field :optimized_for_streaming, T.nilable(T.any(::PlexRubySDK::Operations::GetAllMediaLibraryOptimizedForStreaming1, T::Boolean)), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('optimizedForStreaming') } }

      field :packet_length, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('packetLength') } }
      # An array of streams for this part.
      field :stream, T.nilable(T::Array[::PlexRubySDK::Operations::GetAllMediaLibraryStream]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Stream') } }
      # Video profile for the part.
      field :video_profile, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('videoProfile') } }


      sig { params(file: ::String, id: ::Integer, key: ::String, size: ::Integer, accessible: T.nilable(T::Boolean), audio_profile: T.nilable(::String), container: T.nilable(::String), duration: T.nilable(::Integer), exists: T.nilable(T::Boolean), has64bit_offsets: T.nilable(T::Boolean), has_thumbnail: T.nilable(::PlexRubySDK::Operations::GetAllMediaLibraryHasThumbnail), indexes: T.nilable(::String), optimized_for_streaming: T.nilable(T.any(::PlexRubySDK::Operations::GetAllMediaLibraryOptimizedForStreaming1, T::Boolean)), packet_length: T.nilable(::Integer), stream: T.nilable(T::Array[::PlexRubySDK::Operations::GetAllMediaLibraryStream]), video_profile: T.nilable(::String)).void }
      def initialize(file: nil, id: nil, key: nil, size: nil, accessible: nil, audio_profile: nil, container: nil, duration: nil, exists: nil, has64bit_offsets: nil, has_thumbnail: nil, indexes: nil, optimized_for_streaming: nil, packet_length: nil, stream: nil, video_profile: nil)
        @file = file
        @id = id
        @key = key
        @size = size
        @accessible = accessible
        @audio_profile = audio_profile
        @container = container
        @duration = duration
        @exists = exists
        @has64bit_offsets = has64bit_offsets
        @has_thumbnail = has_thumbnail
        @indexes = indexes
        @optimized_for_streaming = optimized_for_streaming
        @packet_length = packet_length
        @stream = stream
        @video_profile = video_profile
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @file == other.file
        return false unless @id == other.id
        return false unless @key == other.key
        return false unless @size == other.size
        return false unless @accessible == other.accessible
        return false unless @audio_profile == other.audio_profile
        return false unless @container == other.container
        return false unless @duration == other.duration
        return false unless @exists == other.exists
        return false unless @has64bit_offsets == other.has64bit_offsets
        return false unless @has_thumbnail == other.has_thumbnail
        return false unless @indexes == other.indexes
        return false unless @optimized_for_streaming == other.optimized_for_streaming
        return false unless @packet_length == other.packet_length
        return false unless @stream == other.stream
        return false unless @video_profile == other.video_profile
        true
      end
    end
  end
end
