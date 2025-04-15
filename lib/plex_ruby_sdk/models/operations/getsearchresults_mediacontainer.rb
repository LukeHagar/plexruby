# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetSearchResultsMediaContainer
        extend T::Sig
        include Crystalline::MetadataFields


        field :identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('identifier') } }

        field :media_tag_prefix, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagPrefix') } }

        field :media_tag_version, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaTagVersion') } }

        field :metadata, T.nilable(T::Array[Models::Operations::GetSearchResultsMetadata]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Metadata') } }

        field :provider, T.nilable(T::Array[Models::Operations::Provider]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Provider') } }

        field :size, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }


        sig { params(identifier: T.nilable(::String), media_tag_prefix: T.nilable(::String), media_tag_version: T.nilable(::Float), metadata: T.nilable(T::Array[Models::Operations::GetSearchResultsMetadata]), provider: T.nilable(T::Array[Models::Operations::Provider]), size: T.nilable(::Float)).void }
        def initialize(identifier: nil, media_tag_prefix: nil, media_tag_version: nil, metadata: nil, provider: nil, size: nil)
          @identifier = identifier
          @media_tag_prefix = media_tag_prefix
          @media_tag_version = media_tag_version
          @metadata = metadata
          @provider = provider
          @size = size
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @identifier == other.identifier
          return false unless @media_tag_prefix == other.media_tag_prefix
          return false unless @media_tag_version == other.media_tag_version
          return false unless @metadata == other.metadata
          return false unless @provider == other.provider
          return false unless @size == other.size
          true
        end
      end
    end
  end
end
