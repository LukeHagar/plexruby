# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetMediaPostersMetadata < ::Crystalline::FieldAugmented
      extend T::Sig

      # The URL of the poster.
      field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }
      # The URL of the poster.
      field :rating_key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ratingKey') } }
      # Whether this is the selected poster.
      field :selected, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('selected') } }
      # The URL of the poster thumbnail.
      field :thumb, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }
      # The provider of the poster.
      field :provider, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('provider') } }


      sig { params(key: ::String, rating_key: ::String, selected: T::Boolean, thumb: ::String, provider: T.nilable(::String)).void }
      def initialize(key: nil, rating_key: nil, selected: nil, thumb: nil, provider: nil)
        @key = key
        @rating_key = rating_key
        @selected = selected
        @thumb = thumb
        @provider = provider
      end
    end
  end
end
