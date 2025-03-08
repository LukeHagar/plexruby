# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_TOKEN_DETAILS_SUBSCRIPTION_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  

    class GetTokenDetailsSubscription < ::Crystalline::FieldAugmented
      extend T::Sig

      # If the account's Plex Pass subscription is active
      field :active, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('active') } }
      # List of features allowed on your Plex Pass subscription
      field :features, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('features') } }
      # Payment service used for your Plex Pass subscription
      field :payment_service, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('paymentService') } }
      # Name of Plex Pass subscription plan
      field :plan, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('plan') } }
      # String representation of subscriptionActive
      field :status, T.nilable(::PlexRubySDK::Operations::GetTokenDetailsAuthenticationResponseStatus), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::GetTokenDetailsAuthenticationResponseStatus, true) } }
      # Date the account subscribed to Plex Pass
      field :subscribed_at, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('subscribedAt') } }


      sig { params(active: T.nilable(T::Boolean), features: T.nilable(T::Array[::String]), payment_service: T.nilable(::String), plan: T.nilable(::String), status: T.nilable(::PlexRubySDK::Operations::GetTokenDetailsAuthenticationResponseStatus), subscribed_at: T.nilable(::String)).void }
      def initialize(active: nil, features: nil, payment_service: nil, plan: nil, status: nil, subscribed_at: nil)
        @active = active
        @features = features
        @payment_service = payment_service
        @plan = plan
        @status = status
        @subscribed_at = subscribed_at
      end
    end
  end
end
