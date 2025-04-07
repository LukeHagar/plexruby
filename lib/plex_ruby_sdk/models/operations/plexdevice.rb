# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    PLEX_DEVICE_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  

    class PlexDevice < ::Crystalline::FieldAugmented
      extend T::Sig


      field :access_token, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('accessToken') } }

      field :client_identifier, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('clientIdentifier') } }

      field :connections, T::Array[::PlexRubySDK::Operations::Connections], { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('connections') } }

      field :created_at, ::DateTime, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('createdAt'), 'decoder': Utils.datetime_from_iso_format(false) } }

      field :device, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('device') } }

      field :dns_rebinding_protection, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('dnsRebindingProtection') } }

      field :home, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('home') } }

      field :https_required, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('httpsRequired') } }

      field :last_seen_at, ::DateTime, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('lastSeenAt'), 'decoder': Utils.datetime_from_iso_format(false) } }

      field :name, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('name') } }

      field :nat_loopback_supported, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('natLoopbackSupported') } }

      field :owned, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('owned') } }
      # ownerId is null when the device is owned by the token used to send the request
      field :owner_id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ownerId') } }

      field :platform, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('platform') } }

      field :platform_version, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('platformVersion') } }

      field :presence, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('presence') } }

      field :product, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('product') } }

      field :product_version, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('productVersion') } }

      field :provides, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('provides') } }

      field :public_address, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('publicAddress') } }

      field :public_address_matches, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('publicAddressMatches') } }

      field :relay, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('relay') } }

      field :source_title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('sourceTitle') } }

      field :synced, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('synced') } }


      sig { params(access_token: ::String, client_identifier: ::String, connections: T::Array[::PlexRubySDK::Operations::Connections], created_at: ::DateTime, device: ::String, dns_rebinding_protection: T::Boolean, home: T::Boolean, https_required: T::Boolean, last_seen_at: ::DateTime, name: ::String, nat_loopback_supported: T::Boolean, owned: T::Boolean, owner_id: ::Integer, platform: ::String, platform_version: ::String, presence: T::Boolean, product: ::String, product_version: ::String, provides: ::String, public_address: ::String, public_address_matches: T::Boolean, relay: T::Boolean, source_title: ::String, synced: T::Boolean).void }
      def initialize(access_token: nil, client_identifier: nil, connections: nil, created_at: nil, device: nil, dns_rebinding_protection: nil, home: nil, https_required: nil, last_seen_at: nil, name: nil, nat_loopback_supported: nil, owned: nil, owner_id: nil, platform: nil, platform_version: nil, presence: nil, product: nil, product_version: nil, provides: nil, public_address: nil, public_address_matches: nil, relay: nil, source_title: nil, synced: nil)
        @access_token = access_token
        @client_identifier = client_identifier
        @connections = connections
        @created_at = created_at
        @device = device
        @dns_rebinding_protection = dns_rebinding_protection
        @home = home
        @https_required = https_required
        @last_seen_at = last_seen_at
        @name = name
        @nat_loopback_supported = nat_loopback_supported
        @owned = owned
        @owner_id = owner_id
        @platform = platform
        @platform_version = platform_version
        @presence = presence
        @product = product
        @product_version = product_version
        @provides = provides
        @public_address = public_address
        @public_address_matches = public_address_matches
        @relay = relay
        @source_title = source_title
        @synced = synced
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @access_token == other.access_token
        return false unless @client_identifier == other.client_identifier
        return false unless @connections == other.connections
        return false unless @created_at == other.created_at
        return false unless @device == other.device
        return false unless @dns_rebinding_protection == other.dns_rebinding_protection
        return false unless @home == other.home
        return false unless @https_required == other.https_required
        return false unless @last_seen_at == other.last_seen_at
        return false unless @name == other.name
        return false unless @nat_loopback_supported == other.nat_loopback_supported
        return false unless @owned == other.owned
        return false unless @owner_id == other.owner_id
        return false unless @platform == other.platform
        return false unless @platform_version == other.platform_version
        return false unless @presence == other.presence
        return false unless @product == other.product
        return false unless @product_version == other.product_version
        return false unless @provides == other.provides
        return false unless @public_address == other.public_address
        return false unless @public_address_matches == other.public_address_matches
        return false unless @relay == other.relay
        return false unless @source_title == other.source_title
        return false unless @synced == other.synced
        true
      end
    end
  end
end
