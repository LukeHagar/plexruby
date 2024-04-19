# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Butler
    extend T::Sig
    # Butler is the task manager of the Plex Media Server Ecosystem.
    # 

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { returns(::OpenApiSDK::Operations::GetButlerTasksResponse) }
    def get_butler_tasks
      # get_butler_tasks - Get Butler tasks
      # Returns a list of butler tasks
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/butler"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetButlerTasksResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetButlerTasksResponseBody)
          res.two_hundred_application_json_object = out
        end
      elsif r.status == 400
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetButlerTasksButlerResponseBody)
          res.four_hundred_and_one_application_json_object = out
        end
      end
      res
    end


    sig { returns(::OpenApiSDK::Operations::StartAllTasksResponse) }
    def start_all_tasks
      # start_all_tasks - Start all Butler tasks
      # This endpoint will attempt to start all Butler tasks that are enabled in the settings. Butler tasks normally run automatically during a time window configured on the server's Settings page but can be manually started using this endpoint. Tasks will run with the following criteria:
      # 1. Any tasks not scheduled to run on the current day will be skipped.
      # 2. If a task is configured to run at a random time during the configured window and we are outside that window, the task will start immediately.
      # 3. If a task is configured to run at a random time during the configured window and we are within that window, the task will be scheduled at a random time within the window.
      # 4. If we are outside the configured window, the task will start immediately.
      # 
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/butler"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::StartAllTasksResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::StartAllTasksResponseBody)
          res.object = out
        end
      end
      res
    end


    sig { returns(::OpenApiSDK::Operations::StopAllTasksResponse) }
    def stop_all_tasks
      # stop_all_tasks - Stop all Butler tasks
      # This endpoint will stop all currently running tasks and remove any scheduled tasks from the queue.
      # 
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/butler"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::StopAllTasksResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::StopAllTasksResponseBody)
          res.object = out
        end
      end
      res
    end


    sig { params(task_name: ::OpenApiSDK::Operations::TaskName).returns(::OpenApiSDK::Operations::StartTaskResponse) }
    def start_task(task_name)
      # start_task - Start a single Butler task
      # This endpoint will attempt to start a single Butler task that is enabled in the settings. Butler tasks normally run automatically during a time window configured on the server's Settings page but can be manually started using this endpoint. Tasks will run with the following criteria:
      # 1. Any tasks not scheduled to run on the current day will be skipped.
      # 2. If a task is configured to run at a random time during the configured window and we are outside that window, the task will start immediately.
      # 3. If a task is configured to run at a random time during the configured window and we are within that window, the task will be scheduled at a random time within the window.
      # 4. If we are outside the configured window, the task will start immediately.
      # 
      request = ::OpenApiSDK::Operations::StartTaskRequest.new(
        
        task_name: task_name
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::StartTaskRequest,
        base_url,
        '/butler/{taskName}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::StartTaskResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 202, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::StartTaskResponseBody)
          res.object = out
        end
      end
      res
    end


    sig { params(task_name: ::OpenApiSDK::Operations::PathParamTaskName).returns(::OpenApiSDK::Operations::StopTaskResponse) }
    def stop_task(task_name)
      # stop_task - Stop a single Butler task
      # This endpoint will stop a currently running task by name, or remove it from the list of scheduled tasks if it exists. See the section above for a list of task names for this endpoint.
      # 
      request = ::OpenApiSDK::Operations::StopTaskRequest.new(
        
        task_name: task_name
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::StopTaskRequest,
        base_url,
        '/butler/{taskName}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::StopTaskResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400, 404].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::StopTaskResponseBody)
          res.object = out
        end
      end
      res
    end
  end
end