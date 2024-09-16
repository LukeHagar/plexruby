# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class CheckForUpdatesRequest < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # Indicate that you want to start download any updates found.
      field :download, T.nilable(::PlexRubySDK::Operations::Download), { 'query_param': { 'field_name': 'download', 'style': 'form', 'explode': true } }


      sig { params(download: T.nilable(::PlexRubySDK::Operations::Download)).void }
      def initialize(download: nil)
        @download = download
      end
    end
  end
end