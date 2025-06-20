# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetLibrarySectionsAllOperator
        extend T::Sig
        include Crystalline::MetadataFields


        field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

        field :title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }


        sig { params(key: ::String, title: ::String).void }
        def initialize(key: nil, title: nil)
          @key = key
          @title = title
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @key == other.key
          return false unless @title == other.title
          true
        end
      end
    end
  end
end
