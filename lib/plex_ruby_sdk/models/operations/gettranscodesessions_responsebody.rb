# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    
      # The Transcode Sessions
      class GetTranscodeSessionsResponseBody
        extend T::Sig
        include Crystalline::MetadataFields


        field :media_container, T.nilable(Models::Operations::GetTranscodeSessionsMediaContainer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('MediaContainer') } }


        sig { params(media_container: T.nilable(Models::Operations::GetTranscodeSessionsMediaContainer)).void }
        def initialize(media_container: nil)
          @media_container = media_container
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @media_container == other.media_container
          true
        end
      end
    end
  end
end
