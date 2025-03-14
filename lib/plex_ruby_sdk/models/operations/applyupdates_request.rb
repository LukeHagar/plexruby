# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class ApplyUpdatesRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # Indicate that the latest version should be marked as skipped. The [Release] entry for this version will have the `state` set to `skipped`.
      field :skip, T.nilable(::PlexRubySDK::Operations::Skip), { 'query_param': { 'field_name': 'skip', 'style': 'form', 'explode': true } }
      # Indicate that you want the update to run during the next Butler execution. Omitting this or setting it to false indicates that the update should install
      field :tonight, T.nilable(::PlexRubySDK::Operations::Tonight), { 'query_param': { 'field_name': 'tonight', 'style': 'form', 'explode': true } }


      sig { params(skip: T.nilable(::PlexRubySDK::Operations::Skip), tonight: T.nilable(::PlexRubySDK::Operations::Tonight)).void }
      def initialize(skip: nil, tonight: nil)
        @skip = skip
        @tonight = tonight
      end
    end
  end
end
