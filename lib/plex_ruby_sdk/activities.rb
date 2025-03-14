# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module PlexRubySDK
  extend T::Sig
  class Activities
    extend T::Sig
    # Activities are awesome. They provide a way to monitor and control asynchronous operations on the server. In order to receive real-time updates for activities, a client would normally subscribe via either EventSource or Websocket endpoints.
    # Activities are associated with HTTP replies via a special `X-Plex-Activity` header which contains the UUID of the activity.
    # Activities are optional cancellable. If cancellable, they may be cancelled via the `DELETE` endpoint. Other details:
    # - They can contain a `progress` (from 0 to 100) marking the percent completion of the activity.
    # - They must contain an `type` which is used by clients to distinguish the specific activity.
    # - They may contain a `Context` object with attributes which associate the activity with various specific entities (items, libraries, etc.)
    # - The may contain a `Response` object which attributes which represent the result of the asynchronous operation.
    # 

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { returns(::PlexRubySDK::Operations::GetServerActivitiesResponse) }
    def get_server_activities
      # get_server_activities - Get Server Activities
      # Get Server Activities
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/activities"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetServerActivitiesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetServerActivitiesResponseBody)
          res.object = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetServerActivitiesBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetServerActivitiesUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(activity_uuid: ::String).returns(::PlexRubySDK::Operations::CancelServerActivitiesResponse) }
    def cancel_server_activities(activity_uuid)
      # cancel_server_activities - Cancel Server Activities
      # Cancel Server Activities
      request = ::PlexRubySDK::Operations::CancelServerActivitiesRequest.new(
        
        activity_uuid: activity_uuid
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::PlexRubySDK::Operations::CancelServerActivitiesRequest,
        base_url,
        '/activities/{activityUUID}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::CancelServerActivitiesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::CancelServerActivitiesBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::CancelServerActivitiesUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end
  end
end
