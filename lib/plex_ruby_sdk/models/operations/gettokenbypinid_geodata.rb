# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_TOKEN_BY_PIN_ID_GEO_DATA_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  
    # Geo location data
    class GetTokenByPinIdGeoData < ::Crystalline::FieldAugmented
      extend T::Sig

      # The name of the city.
      field :city, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('city') } }
      # The ISO 3166-1 alpha-2 code of the country.
      field :code, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('code') } }
      # The continent code where the country is located.
      field :continent_code, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('continent_code') } }
      # The geographical coordinates (latitude, longitude) of the location.
      field :coordinates, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('coordinates') } }
      # The official name of the country.
      field :country, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('country') } }
      # Indicates if the country is a member of the European Union.
      field :european_union_member, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('european_union_member') } }
      # Indicates if the country has privacy restrictions.
      field :in_privacy_restricted_country, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('in_privacy_restricted_country') } }
      # Indicates if the region has privacy restrictions.
      field :in_privacy_restricted_region, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('in_privacy_restricted_region') } }
      # The postal code of the location.
      field :postal_code, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('postal_code') } }
      # The name of the primary administrative subdivision.
      field :subdivisions, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('subdivisions') } }
      # The time zone of the country.
      field :time_zone, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('time_zone') } }


      sig { params(city: ::String, code: ::String, continent_code: ::String, coordinates: ::String, country: ::String, european_union_member: T::Boolean, in_privacy_restricted_country: T::Boolean, in_privacy_restricted_region: T::Boolean, postal_code: ::String, subdivisions: ::String, time_zone: ::String).void }
      def initialize(city: nil, code: nil, continent_code: nil, coordinates: nil, country: nil, european_union_member: nil, in_privacy_restricted_country: nil, in_privacy_restricted_region: nil, postal_code: nil, subdivisions: nil, time_zone: nil)
        @city = city
        @code = code
        @continent_code = continent_code
        @coordinates = coordinates
        @country = country
        @european_union_member = european_union_member
        @in_privacy_restricted_country = in_privacy_restricted_country
        @in_privacy_restricted_region = in_privacy_restricted_region
        @postal_code = postal_code
        @subdivisions = subdivisions
        @time_zone = time_zone
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @city == other.city
        return false unless @code == other.code
        return false unless @continent_code == other.continent_code
        return false unless @coordinates == other.coordinates
        return false unless @country == other.country
        return false unless @european_union_member == other.european_union_member
        return false unless @in_privacy_restricted_country == other.in_privacy_restricted_country
        return false unless @in_privacy_restricted_region == other.in_privacy_restricted_region
        return false unless @postal_code == other.postal_code
        return false unless @subdivisions == other.subdivisions
        return false unless @time_zone == other.time_zone
        true
      end
    end
  end
end
