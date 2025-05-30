# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    
      # Home Data
      class GetHomeDataResponseBody
        extend T::Sig
        include Crystalline::MetadataFields


        field :guest_enabled, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('guestEnabled') } }

        field :guest_user_id, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('guestUserID') } }

        field :guest_user_uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('guestUserUUID') } }

        field :id, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }

        field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('name') } }

        field :subscription, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('subscription') } }


        sig { params(guest_enabled: T.nilable(T::Boolean), guest_user_id: T.nilable(::Float), guest_user_uuid: T.nilable(::String), id: T.nilable(::Float), name: T.nilable(::String), subscription: T.nilable(T::Boolean)).void }
        def initialize(guest_enabled: nil, guest_user_id: nil, guest_user_uuid: nil, id: nil, name: nil, subscription: nil)
          @guest_enabled = guest_enabled
          @guest_user_id = guest_user_id
          @guest_user_uuid = guest_user_uuid
          @id = id
          @name = name
          @subscription = subscription
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @guest_enabled == other.guest_enabled
          return false unless @guest_user_id == other.guest_user_id
          return false unless @guest_user_uuid == other.guest_user_uuid
          return false unless @id == other.id
          return false unless @name == other.name
          return false unless @subscription == other.subscription
          true
        end
      end
    end
  end
end
