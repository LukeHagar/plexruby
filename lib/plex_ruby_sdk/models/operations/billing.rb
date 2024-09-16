# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    BILLING_SERVERS = [
      'https://plex.tv/api/v2/'
    ].freeze
  

    class Billing < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :internal_payment_method, ::PlexRubySDK::Operations::InternalPaymentMethod, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('internalPaymentMethod') } }

      field :payment_method_id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('paymentMethodId') } }


      sig { params(internal_payment_method: ::PlexRubySDK::Operations::InternalPaymentMethod, payment_method_id: ::Integer).void }
      def initialize(internal_payment_method: nil, payment_method_id: nil)
        @internal_payment_method = internal_payment_method
        @payment_method_id = payment_method_id
      end
    end
  end
end
