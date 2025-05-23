# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    
      # All butler tasks
      class GetButlerTasksResponseBody
        extend T::Sig
        include Crystalline::MetadataFields


        field :butler_tasks, T.nilable(Models::Operations::ButlerTasks), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ButlerTasks') } }


        sig { params(butler_tasks: T.nilable(Models::Operations::ButlerTasks)).void }
        def initialize(butler_tasks: nil)
          @butler_tasks = butler_tasks
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @butler_tasks == other.butler_tasks
          true
        end
      end
    end
  end
end
