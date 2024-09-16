# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetTransientTokenRequest < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # `all` - This is the only supported `scope` parameter.
      field :scope, ::PlexRubySDK::Operations::Scope, { 'query_param': { 'field_name': 'scope', 'style': 'form', 'explode': true } }
      # `delegation` - This is the only supported `type` parameter.
      field :type, ::PlexRubySDK::Operations::GetTransientTokenQueryParamType, { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }


      sig { params(scope: ::PlexRubySDK::Operations::Scope, type: ::PlexRubySDK::Operations::GetTransientTokenQueryParamType).void }
      def initialize(scope: nil, type: nil)
        @scope = scope
        @type = type
      end
    end
  end
end
