# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetFileHashRequest < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # This is the path to the local file, must be prefixed by `file://`
      field :url, ::String, { 'query_param': { 'field_name': 'url', 'style': 'form', 'explode': true } }
      # Item type
      field :type, T.nilable(::Float), { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }


      sig { params(url: ::String, type: T.nilable(::Float)).void }
      def initialize(url: nil, type: nil)
        @url = url
        @type = type
      end
    end
  end
end