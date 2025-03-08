# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetAllMediaLibraryImage < ::Crystalline::FieldAugmented
      extend T::Sig


      field :alt, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('alt') } }

      field :type, ::PlexRubySDK::Operations::GetAllMediaLibraryLibraryResponseType, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::GetAllMediaLibraryLibraryResponseType, false) } }

      field :url, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('url') } }


      sig { params(alt: ::String, type: ::PlexRubySDK::Operations::GetAllMediaLibraryLibraryResponseType, url: ::String).void }
      def initialize(alt: nil, type: nil, url: nil)
        @alt = alt
        @type = type
        @url = url
      end
    end
  end
end
