# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetSearchAllLibrariesImage < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :alt, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('alt') } }

      field :type, ::PlexRubySDK::Operations::GetSearchAllLibrariesLibraryType, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::GetSearchAllLibrariesLibraryType, false) } }

      field :url, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('url') } }


      sig { params(alt: ::String, type: ::PlexRubySDK::Operations::GetSearchAllLibrariesLibraryType, url: ::String).void }
      def initialize(alt: nil, type: nil, url: nil)
        @alt = alt
        @type = type
        @url = url
      end
    end
  end
end