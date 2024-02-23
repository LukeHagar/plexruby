# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class ButlerTask < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }

      field :enabled, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('enabled') } }

      field :interval, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('interval') } }

      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }

      field :schedule_randomized, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('scheduleRandomized') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title') } }


      sig { params(description: T.nilable(::String), enabled: T.nilable(T::Boolean), interval: T.nilable(::Float), name: T.nilable(::String), schedule_randomized: T.nilable(T::Boolean), title: T.nilable(::String)).void }
      def initialize(description: nil, enabled: nil, interval: nil, name: nil, schedule_randomized: nil, title: nil)
        @description = description
        @enabled = enabled
        @interval = interval
        @name = name
        @schedule_randomized = schedule_randomized
        @title = title
      end
    end
  end
end
