# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class StopTranscodeSessionRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # the Key of the transcode session to stop
      field :session_key, ::String, { 'path_param': { 'field_name': 'sessionKey', 'style': 'simple', 'explode': false } }


      sig { params(session_key: ::String).void }
      def initialize(session_key: nil)
        @session_key = session_key
      end
    end
  end
end
