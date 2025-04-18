# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetTransientTokenRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # `all` - This is the only supported `scope` parameter.
        field :scope, Models::Operations::Scope, { 'query_param': { 'field_name': 'scope', 'style': 'form', 'explode': true } }
        # `delegation` - This is the only supported `type` parameter.
        field :type, Models::Operations::GetTransientTokenQueryParamType, { 'query_param': { 'field_name': 'type', 'style': 'form', 'explode': true } }


        sig { params(scope: Models::Operations::Scope, type: Models::Operations::GetTransientTokenQueryParamType).void }
        def initialize(scope: nil, type: nil)
          @scope = scope
          @type = type
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @scope == other.scope
          return false unless @type == other.type
          true
        end
      end
    end
  end
end
