# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class Release < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :added, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('added') } }

      field :download_url, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('downloadURL') } }

      field :fixed, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('fixed') } }

      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('key') } }

      field :state, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('state') } }

      field :version, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('version') } }


      sig { params(added: T.nilable(::String), download_url: T.nilable(::String), fixed: T.nilable(::String), key: T.nilable(::String), state: T.nilable(::String), version: T.nilable(::String)).void }
      def initialize(added: nil, download_url: nil, fixed: nil, key: nil, state: nil, version: nil)
        @added = added
        @download_url = download_url
        @fixed = fixed
        @key = key
        @state = state
        @version = version
      end
    end
  end
end
