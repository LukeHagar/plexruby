# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class StatisticsResources < ::Crystalline::FieldAugmented
      extend T::Sig


      field :at, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('at') } }

      field :host_cpu_utilization, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hostCpuUtilization') } }

      field :host_memory_utilization, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hostMemoryUtilization') } }

      field :process_cpu_utilization, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('processCpuUtilization') } }

      field :process_memory_utilization, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('processMemoryUtilization') } }

      field :timespan, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('timespan') } }


      sig { params(at: T.nilable(::Integer), host_cpu_utilization: T.nilable(::Float), host_memory_utilization: T.nilable(::Float), process_cpu_utilization: T.nilable(::Float), process_memory_utilization: T.nilable(::Float), timespan: T.nilable(::Integer)).void }
      def initialize(at: nil, host_cpu_utilization: nil, host_memory_utilization: nil, process_cpu_utilization: nil, process_memory_utilization: nil, timespan: nil)
        @at = at
        @host_cpu_utilization = host_cpu_utilization
        @host_memory_utilization = host_memory_utilization
        @process_cpu_utilization = process_cpu_utilization
        @process_memory_utilization = process_memory_utilization
        @timespan = timespan
      end
    end
  end
end
