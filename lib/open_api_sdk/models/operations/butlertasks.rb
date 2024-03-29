# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class ButlerTasks < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :butler_task, T.nilable(T::Array[::OpenApiSDK::Operations::ButlerTask]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ButlerTask') } }


      sig { params(butler_task: T.nilable(T::Array[::OpenApiSDK::Operations::ButlerTask])).void }
      def initialize(butler_task: nil)
        @butler_task = butler_task
      end
    end
  end
end
