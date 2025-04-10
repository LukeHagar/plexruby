# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class StartTaskRequest < ::Crystalline::FieldAugmented
      extend T::Sig

      # the name of the task to be started.
      field :task_name, ::PlexRubySDK::Operations::TaskName, { 'path_param': { 'field_name': 'taskName', 'style': 'simple', 'explode': false } }


      sig { params(task_name: ::PlexRubySDK::Operations::TaskName).void }
      def initialize(task_name: nil)
        @task_name = task_name
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @task_name == other.task_name
        true
      end
    end
  end
end
