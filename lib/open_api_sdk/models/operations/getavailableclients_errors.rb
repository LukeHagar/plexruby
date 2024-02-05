# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetAvailableClientsErrors < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :code, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('code') } }

      field :message, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('message') } }

      field :status, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('status') } }


      sig { params(code: T.nilable(::Float), message: T.nilable(::String), status: T.nilable(::Float)).void }
      def initialize(code: nil, message: nil, status: nil)
        @code = code
        @message = message
        @status = status
      end
    end
  end
end
