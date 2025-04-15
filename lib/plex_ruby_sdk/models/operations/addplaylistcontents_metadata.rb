# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class AddPlaylistContentsMetadata
        extend T::Sig
        include Crystalline::MetadataFields


        field :added_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('addedAt') } }

        field :composite, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('composite') } }

        field :duration, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('duration') } }

        field :guid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('guid') } }

        field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

        field :leaf_count, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('leafCount') } }

        field :playlist_type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('playlistType') } }

        field :rating_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ratingKey') } }

        field :smart, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('smart') } }

        field :summary, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('summary') } }

        field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

        field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }

        field :updated_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('updatedAt') } }


        sig { params(added_at: T.nilable(::Integer), composite: T.nilable(::String), duration: T.nilable(::Integer), guid: T.nilable(::String), key: T.nilable(::String), leaf_count: T.nilable(::Integer), playlist_type: T.nilable(::String), rating_key: T.nilable(::String), smart: T.nilable(T::Boolean), summary: T.nilable(::String), title: T.nilable(::String), type: T.nilable(::String), updated_at: T.nilable(::Integer)).void }
        def initialize(added_at: nil, composite: nil, duration: nil, guid: nil, key: nil, leaf_count: nil, playlist_type: nil, rating_key: nil, smart: nil, summary: nil, title: nil, type: nil, updated_at: nil)
          @added_at = added_at
          @composite = composite
          @duration = duration
          @guid = guid
          @key = key
          @leaf_count = leaf_count
          @playlist_type = playlist_type
          @rating_key = rating_key
          @smart = smart
          @summary = summary
          @title = title
          @type = type
          @updated_at = updated_at
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @added_at == other.added_at
          return false unless @composite == other.composite
          return false unless @duration == other.duration
          return false unless @guid == other.guid
          return false unless @key == other.key
          return false unless @leaf_count == other.leaf_count
          return false unless @playlist_type == other.playlist_type
          return false unless @rating_key == other.rating_key
          return false unless @smart == other.smart
          return false unless @summary == other.summary
          return false unless @title == other.title
          return false unless @type == other.type
          return false unless @updated_at == other.updated_at
          true
        end
      end
    end
  end
end
