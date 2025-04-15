# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetMediaMetaDataGenre
        extend T::Sig
        include Crystalline::MetadataFields

        # The filter string for the genre.
        field :filter, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('filter') } }
        # The unique genre identifier.
        field :id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }
        # The genre name.
        field :tag, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('tag') } }


        sig { params(filter: ::String, id: ::Integer, tag: ::String).void }
        def initialize(filter: nil, id: nil, tag: nil)
          @filter = filter
          @id = id
          @tag = tag
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @filter == other.filter
          return false unless @id == other.id
          return false unless @tag == other.tag
          true
        end
      end
    end
  end
end
