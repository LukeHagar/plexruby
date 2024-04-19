# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  
    # All butler tasks
    class GetButlerTasksResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :butler_tasks, T.nilable(::OpenApiSDK::Operations::ButlerTasks), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ButlerTasks') } }


      sig { params(butler_tasks: T.nilable(::OpenApiSDK::Operations::ButlerTasks)).void }
      def initialize(butler_tasks: nil)
        @butler_tasks = butler_tasks
      end
    end
  end
end