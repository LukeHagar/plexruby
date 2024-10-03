# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class SearchResult < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :metadata, ::PlexRubySDK::Operations::GetSearchAllLibrariesMetadata, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Metadata') } }

      field :score, ::Float, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('score') } }


      sig { params(metadata: ::PlexRubySDK::Operations::GetSearchAllLibrariesMetadata, score: ::Float).void }
      def initialize(metadata: nil, score: nil)
        @metadata = metadata
        @score = score
      end
    end
  end
end