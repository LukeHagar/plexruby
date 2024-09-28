# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    PAST_SUBSCRIPTION_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  

    class PastSubscription < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :billing, ::PlexRubySDK::Operations::Billing, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('billing') } }

      field :canceled, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('canceled') } }

      field :can_convert, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('canConvert') } }

      field :can_downgrade, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('canDowngrade') } }

      field :can_reactivate, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('canReactivate') } }

      field :can_upgrade, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('canUpgrade') } }

      field :ends_at, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('endsAt') } }

      field :grace_period, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('gracePeriod') } }

      field :id, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }

      field :mode, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mode') } }

      field :on_hold, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('onHold') } }

      field :renews_at, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('renewsAt') } }

      field :state, ::PlexRubySDK::Operations::PostUsersSignInDataState, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('state'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::PostUsersSignInDataState, false) } }

      field :transfer, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('transfer') } }

      field :type, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }


      sig { params(billing: ::PlexRubySDK::Operations::Billing, canceled: T::Boolean, can_convert: T::Boolean, can_downgrade: T::Boolean, can_reactivate: T::Boolean, can_upgrade: T::Boolean, ends_at: ::Integer, grace_period: T::Boolean, id: ::String, mode: ::String, on_hold: T::Boolean, renews_at: ::Integer, state: ::PlexRubySDK::Operations::PostUsersSignInDataState, transfer: ::String, type: ::String).void }
      def initialize(billing: nil, canceled: nil, can_convert: nil, can_downgrade: nil, can_reactivate: nil, can_upgrade: nil, ends_at: nil, grace_period: nil, id: nil, mode: nil, on_hold: nil, renews_at: nil, state: nil, transfer: nil, type: nil)
        @billing = billing
        @canceled = canceled
        @can_convert = can_convert
        @can_downgrade = can_downgrade
        @can_reactivate = can_reactivate
        @can_upgrade = can_upgrade
        @ends_at = ends_at
        @grace_period = grace_period
        @id = id
        @mode = mode
        @on_hold = on_hold
        @renews_at = renews_at
        @state = state
        @transfer = transfer
        @type = type
      end
    end
  end
end
