# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetMediaProvidersDirectory
        extend T::Sig
        include Crystalline::MetadataFields


        field :agent, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('agent') } }

        field :hub_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hubKey') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }

        field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

        field :language, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('language') } }

        field :pivot, T.nilable(T::Array[Models::Operations::Pivot]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Pivot') } }

        field :refreshing, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('refreshing') } }

        field :scanned_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('scannedAt') } }

        field :scanner, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('scanner') } }

        field :subtype, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('subtype') } }

        field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

        field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }

        field :updated_at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('updatedAt') } }

        field :uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('uuid') } }


        sig { params(agent: T.nilable(::String), hub_key: T.nilable(::String), id: T.nilable(::String), key: T.nilable(::String), language: T.nilable(::String), pivot: T.nilable(T::Array[Models::Operations::Pivot]), refreshing: T.nilable(T::Boolean), scanned_at: T.nilable(::Integer), scanner: T.nilable(::String), subtype: T.nilable(::String), title: T.nilable(::String), type: T.nilable(::String), updated_at: T.nilable(::Integer), uuid: T.nilable(::String)).void }
        def initialize(agent: nil, hub_key: nil, id: nil, key: nil, language: nil, pivot: nil, refreshing: nil, scanned_at: nil, scanner: nil, subtype: nil, title: nil, type: nil, updated_at: nil, uuid: nil)
          @agent = agent
          @hub_key = hub_key
          @id = id
          @key = key
          @language = language
          @pivot = pivot
          @refreshing = refreshing
          @scanned_at = scanned_at
          @scanner = scanner
          @subtype = subtype
          @title = title
          @type = type
          @updated_at = updated_at
          @uuid = uuid
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @agent == other.agent
          return false unless @hub_key == other.hub_key
          return false unless @id == other.id
          return false unless @key == other.key
          return false unless @language == other.language
          return false unless @pivot == other.pivot
          return false unless @refreshing == other.refreshing
          return false unless @scanned_at == other.scanned_at
          return false unless @scanner == other.scanner
          return false unless @subtype == other.subtype
          return false unless @title == other.title
          return false unless @type == other.type
          return false unless @updated_at == other.updated_at
          return false unless @uuid == other.uuid
          true
        end
      end
    end
  end
end
