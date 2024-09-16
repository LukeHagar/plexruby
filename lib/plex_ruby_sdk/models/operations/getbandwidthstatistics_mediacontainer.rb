# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetBandwidthStatisticsMediaContainer < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :account, T.nilable(T::Array[::PlexRubySDK::Operations::GetBandwidthStatisticsAccount]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Account') } }

      field :device, T.nilable(T::Array[::PlexRubySDK::Operations::GetBandwidthStatisticsDevice]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Device') } }

      field :size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }

      field :statistics_bandwidth, T.nilable(T::Array[::PlexRubySDK::Operations::StatisticsBandwidth]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('StatisticsBandwidth') } }


      sig { params(account: T.nilable(T::Array[::PlexRubySDK::Operations::GetBandwidthStatisticsAccount]), device: T.nilable(T::Array[::PlexRubySDK::Operations::GetBandwidthStatisticsDevice]), size: T.nilable(::Integer), statistics_bandwidth: T.nilable(T::Array[::PlexRubySDK::Operations::StatisticsBandwidth])).void }
      def initialize(account: nil, device: nil, size: nil, statistics_bandwidth: nil)
        @account = account
        @device = device
        @size = size
        @statistics_bandwidth = statistics_bandwidth
      end
    end
  end
end