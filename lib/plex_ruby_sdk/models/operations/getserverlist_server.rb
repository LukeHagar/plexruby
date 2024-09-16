# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetServerListServer < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :address, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('address') } }

      field :host, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('host') } }

      field :machine_identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('machineIdentifier') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('name') } }

      field :port, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('port') } }

      field :version, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('version') } }


      sig { params(address: T.nilable(::String), host: T.nilable(::String), machine_identifier: T.nilable(::String), name: T.nilable(::String), port: T.nilable(::Float), version: T.nilable(::String)).void }
      def initialize(address: nil, host: nil, machine_identifier: nil, name: nil, port: nil, version: nil)
        @address = address
        @host = host
        @machine_identifier = machine_identifier
        @name = name
        @port = port
        @version = version
      end
    end
  end
end