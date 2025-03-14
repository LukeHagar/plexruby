# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    RESPONSE_BODY_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  

    class ResponseBody < ::Crystalline::FieldAugmented
      extend T::Sig


      field :base_url, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('baseURL') } }

      field :identifier, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('identifier') } }

      field :link_url, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('linkURL') } }

      field :provides, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('provides') } }

      field :title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }
      # The plex authtoken used to identify with
      field :token, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('token') } }


      sig { params(base_url: ::String, identifier: ::String, link_url: ::String, provides: ::String, title: ::String, token: ::String).void }
      def initialize(base_url: nil, identifier: nil, link_url: nil, provides: nil, title: nil, token: nil)
        @base_url = base_url
        @identifier = identifier
        @link_url = link_url
        @provides = provides
        @title = title
        @token = token
      end
    end
  end
end
