# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module PlexRubySDK
  extend T::Sig
  class Updater
    extend T::Sig
    # This describes the API for searching and applying updates to the Plex Media Server.
    # Updates to the status can be observed via the Event API.
    # 

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { returns(::PlexRubySDK::Operations::GetUpdateStatusResponse) }
    def get_update_status
      # get_update_status - Querying status of updates
      # Querying status of updates
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/updater/status"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetUpdateStatusResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetUpdateStatusResponseBody)
          res.object = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetUpdateStatusBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetUpdateStatusUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(download: T.nilable(::PlexRubySDK::Operations::Download)).returns(::PlexRubySDK::Operations::CheckForUpdatesResponse) }
    def check_for_updates(download = nil)
      # check_for_updates - Checking for updates
      # Checking for updates
      request = ::PlexRubySDK::Operations::CheckForUpdatesRequest.new(
        
        download: download
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/updater/check"
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::CheckForUpdatesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::CheckForUpdatesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::CheckForUpdatesBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::CheckForUpdatesUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(tonight: T.nilable(::PlexRubySDK::Operations::Tonight), skip: T.nilable(::PlexRubySDK::Operations::Skip)).returns(::PlexRubySDK::Operations::ApplyUpdatesResponse) }
    def apply_updates(tonight = nil, skip = nil)
      # apply_updates - Apply Updates
      # Note that these two parameters are effectively mutually exclusive. The `tonight` parameter takes precedence and `skip` will be ignored if `tonight` is also passed
      # 
      request = ::PlexRubySDK::Operations::ApplyUpdatesRequest.new(
        
        tonight: tonight,
        skip: skip
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/updater/apply"
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::ApplyUpdatesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::ApplyUpdatesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::ApplyUpdatesBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::ApplyUpdatesUnauthorized)
          res.unauthorized = out
        end
      elsif r.status == 500
      end

      res
    end
  end
end
