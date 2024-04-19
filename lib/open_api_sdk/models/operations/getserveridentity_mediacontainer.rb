# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetServerIdentityMediaContainer < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :claimed, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('claimed') } }

      field :machine_identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('machineIdentifier') } }

      field :size, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('size') } }

      field :version, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('version') } }


      sig { params(claimed: T.nilable(T::Boolean), machine_identifier: T.nilable(::String), size: T.nilable(::Float), version: T.nilable(::String)).void }
      def initialize(claimed: nil, machine_identifier: nil, size: nil, version: nil)
        @claimed = claimed
        @machine_identifier = machine_identifier
        @size = size
        @version = version
      end
    end
  end
end