# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetStatisticsMediaContainer < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :account, T.nilable(T::Array[::PlexRubySDK::Operations::Account]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Account') } }

      field :device, T.nilable(T::Array[::PlexRubySDK::Operations::GetStatisticsDevice]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Device') } }

      field :size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }

      field :statistics_media, T.nilable(T::Array[::PlexRubySDK::Operations::StatisticsMedia]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('StatisticsMedia') } }


      sig { params(account: T.nilable(T::Array[::PlexRubySDK::Operations::Account]), device: T.nilable(T::Array[::PlexRubySDK::Operations::GetStatisticsDevice]), size: T.nilable(::Integer), statistics_media: T.nilable(T::Array[::PlexRubySDK::Operations::StatisticsMedia])).void }
      def initialize(account: nil, device: nil, size: nil, statistics_media: nil)
        @account = account
        @device = device
        @size = size
        @statistics_media = statistics_media
      end
    end
  end
end