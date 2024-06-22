# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetBandwidthStatisticsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The timespan to retrieve statistics for
      # the exact meaning of this parameter is not known
      # 
      field :timespan, T.nilable(::Integer), { 'query_param': { 'field_name': 'Timespan', 'style': 'form', 'explode': true } }


      sig { params(timespan: T.nilable(::Integer)).void }
      def initialize(timespan: nil)
        @timespan = timespan
      end
    end
  end
end
