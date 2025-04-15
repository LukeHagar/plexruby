# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetSearchAllLibrariesMediaGuid
        extend T::Sig
        include Crystalline::MetadataFields

        # Can be one of the following formats:
        # imdb://tt13015952, tmdb://2434012, tvdb://7945991
        # 
        field :id, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }


        sig { params(id: ::String).void }
        def initialize(id: nil)
          @id = id
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @id == other.id
          true
        end
      end
    end
  end
end
