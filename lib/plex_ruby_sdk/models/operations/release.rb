# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class Release < ::Crystalline::FieldAugmented
      extend T::Sig


      field :added, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('added') } }

      field :download_url, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('downloadURL') } }

      field :fixed, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('fixed') } }

      field :key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :state, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('state') } }

      field :version, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('version') } }


      sig { params(added: T.nilable(::String), download_url: T.nilable(::String), fixed: T.nilable(::String), key: T.nilable(::String), state: T.nilable(::String), version: T.nilable(::String)).void }
      def initialize(added: nil, download_url: nil, fixed: nil, key: nil, state: nil, version: nil)
        @added = added
        @download_url = download_url
        @fixed = fixed
        @key = key
        @state = state
        @version = version
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @added == other.added
        return false unless @download_url == other.download_url
        return false unless @fixed == other.fixed
        return false unless @key == other.key
        return false unless @state == other.state
        return false unless @version == other.version
        true
      end
    end
  end
end
