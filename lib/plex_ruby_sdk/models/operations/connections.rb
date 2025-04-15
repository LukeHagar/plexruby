# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
      CONNECTIONS_SERVERS = [
        'https://plex.tv/api/v2'
      ].freeze
    

      class Connections
        extend T::Sig
        include Crystalline::MetadataFields

        # The (ip) address or domain name used for the connection
        field :address, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('address') } }
        # If the connection is using IPv6
        field :i_pv6, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('IPv6') } }
        # If the connection is local address
        field :local, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('local') } }
        # The port used for the connection
        field :port, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('port') } }
        # The protocol used for the connection (http, https, etc)
        field :protocol, Models::Operations::Protocol, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('protocol'), 'decoder': Utils.enum_from_string(Models::Operations::Protocol, false) } }
        # If the connection is relayed through plex.direct
        field :relay, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('relay') } }
        # The full URI of the connection
        field :uri, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('uri') } }


        sig { params(address: ::String, i_pv6: T::Boolean, local: T::Boolean, port: ::Integer, protocol: Models::Operations::Protocol, relay: T::Boolean, uri: ::String).void }
        def initialize(address: nil, i_pv6: nil, local: nil, port: nil, protocol: nil, relay: nil, uri: nil)
          @address = address
          @i_pv6 = i_pv6
          @local = local
          @port = port
          @protocol = protocol
          @relay = relay
          @uri = uri
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @address == other.address
          return false unless @i_pv6 == other.i_pv6
          return false unless @local == other.local
          return false unless @port == other.port
          return false unless @protocol == other.protocol
          return false unless @relay == other.relay
          return false unless @uri == other.uri
          true
        end
      end
    end
  end
end
