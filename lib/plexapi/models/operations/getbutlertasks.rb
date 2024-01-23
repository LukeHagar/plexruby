# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations

    class GetButlerTasksErrors < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :code, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('code') } }

      field :message, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('message') } }

      field :status, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('status') } }


      sig { params(code: T.nilable(Float), message: T.nilable(String), status: T.nilable(Float)).void }
      def initialize(code: nil, message: nil, status: nil)
        @code = code
        @message = message
        @status = status
      end
    end

    # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    class GetButlerTasksButlerResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::GetButlerTasksErrors]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::GetButlerTasksErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class ButlerTask < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :description, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }

      field :enabled, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('enabled') } }

      field :interval, T.nilable(Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('interval') } }

      field :name, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }

      field :schedule_randomized, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('scheduleRandomized') } }

      field :title, T.nilable(String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('title') } }


      sig { params(description: T.nilable(String), enabled: T.nilable(T::Boolean), interval: T.nilable(Float), name: T.nilable(String), schedule_randomized: T.nilable(T::Boolean), title: T.nilable(String)).void }
      def initialize(description: nil, enabled: nil, interval: nil, name: nil, schedule_randomized: nil, title: nil)
        @description = description
        @enabled = enabled
        @interval = interval
        @name = name
        @schedule_randomized = schedule_randomized
        @title = title
      end
    end


    class ButlerTasks < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :butler_task, T.nilable(T::Array[Operations::ButlerTask]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ButlerTask') } }


      sig { params(butler_task: T.nilable(T::Array[Operations::ButlerTask])).void }
      def initialize(butler_task: nil)
        @butler_task = butler_task
      end
    end

    # All butler tasks
    class GetButlerTasksResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :butler_tasks, T.nilable(Operations::ButlerTasks), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ButlerTasks') } }


      sig { params(butler_tasks: T.nilable(Operations::ButlerTasks)).void }
      def initialize(butler_tasks: nil)
        @butler_tasks = butler_tasks
      end
    end


    class GetButlerTasksResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # All butler tasks
      field :two_hundred_application_json_object, T.nilable(Operations::GetButlerTasksResponseBody)
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :four_hundred_and_one_application_json_object, T.nilable(Operations::GetButlerTasksButlerResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, two_hundred_application_json_object: T.nilable(Operations::GetButlerTasksResponseBody), four_hundred_and_one_application_json_object: T.nilable(Operations::GetButlerTasksButlerResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, two_hundred_application_json_object: nil, four_hundred_and_one_application_json_object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @two_hundred_application_json_object = two_hundred_application_json_object
        @four_hundred_and_one_application_json_object = four_hundred_and_one_application_json_object
      end
    end
  end
end
