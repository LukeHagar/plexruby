# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class SearchResult
        extend T::Sig
        include Crystalline::MetadataFields


        field :metadata, Models::Operations::GetSearchAllLibrariesMetadata, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Metadata') } }

        field :score, ::Float, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('score') } }


        sig { params(metadata: Models::Operations::GetSearchAllLibrariesMetadata, score: ::Float).void }
        def initialize(metadata: nil, score: nil)
          @metadata = metadata
          @score = score
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @metadata == other.metadata
          return false unless @score == other.score
          true
        end
      end
    end
  end
end
