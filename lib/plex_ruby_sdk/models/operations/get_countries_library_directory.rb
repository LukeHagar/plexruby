# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetCountriesLibraryDirectory
        extend T::Sig
        include Crystalline::MetadataFields


        field :fast_key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('fastKey') } }

        field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

        field :title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }


        sig { params(fast_key: ::String, key: ::String, title: ::String).void }
        def initialize(fast_key: nil, key: nil, title: nil)
          @fast_key = fast_key
          @key = key
          @title = title
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @fast_key == other.fast_key
          return false unless @key == other.key
          return false unless @title == other.title
          true
        end
      end
    end
  end
end
