# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class StartTaskRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # the name of the task to be started.
      field :task_name, ::OpenApiSDK::Operations::TaskName, { 'path_param': { 'field_name': 'taskName', 'style': 'simple', 'explode': false } }


      sig { params(task_name: ::OpenApiSDK::Operations::TaskName).void }
      def initialize(task_name: nil)
        @task_name = task_name
      end
    end
  end
end
