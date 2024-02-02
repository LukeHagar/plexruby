# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Shared

    class Security < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :access_token, String, { 'security': { 'scheme': true, 'type': 'apiKey', 'sub_type': 'header', 'field_name': 'X-Plex-Token' } }


      sig { params(access_token: String).void }
      def initialize(access_token: nil)
        @access_token = access_token
      end
    end
  end
end
