# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'faraday/retry'
require 'sorbet-runtime'
require_relative 'sdk_hooks/hooks'
require_relative 'utils/retries'

module PlexRubySDK
  extend T::Sig
  class Plex
    extend T::Sig
    
    # GET_COMPANIONS_DATA_SERVERS contains the list of server urls available to the SDK.
    GET_COMPANIONS_DATA_SERVERS = [
      'https://plex.tv/api/v2', 
    ].freeze
    
    # GET_USER_FRIENDS_SERVERS contains the list of server urls available to the SDK.
    GET_USER_FRIENDS_SERVERS = [
      'https://plex.tv/api/v2', 
    ].freeze
    
    # GET_GEO_DATA_SERVERS contains the list of server urls available to the SDK.
    GET_GEO_DATA_SERVERS = [
      'https://plex.tv/api/v2', 
    ].freeze
    
    # GET_SERVER_RESOURCES_SERVERS contains the list of server urls available to the SDK.
    GET_SERVER_RESOURCES_SERVERS = [
      'https://plex.tv/api/v2', 
    ].freeze
    
    # GET_PIN_SERVERS contains the list of server urls available to the SDK.
    GET_PIN_SERVERS = [
      'https://plex.tv/api/v2', 
    ].freeze
    
    # GET_TOKEN_BY_PIN_ID_SERVERS contains the list of server urls available to the SDK.
    GET_TOKEN_BY_PIN_ID_SERVERS = [
      'https://plex.tv/api/v2', 
    ].freeze
    # API Calls that perform operations directly against https://Plex.tv
    # 

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(server_url: T.nilable(String), timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::GetCompanionsDataResponse) }
    def get_companions_data(server_url = nil, timeout_ms = nil)
      # get_companions_data - Get Companions Data
      # Get Companions Data
      base_url = Utils.template_url(GET_COMPANIONS_DATA_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/companions"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'getCompanionsData',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.get(url) do |req|
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if r.nil? || Utils.error_status?(r.status)
          r = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        else
          r = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        end
        
        if r.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetCompanionsDataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::PlexRubySDK::Operations::ResponseBody])
          res.response_bodies = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetCompanionsDataBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetCompanionsDataUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(server_url: T.nilable(String), timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::GetUserFriendsResponse) }
    def get_user_friends(server_url = nil, timeout_ms = nil)
      # get_user_friends - Get list of friends of the user logged in
      # Get friends of provided auth token.
      base_url = Utils.template_url(GET_USER_FRIENDS_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/friends"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'getUserFriends',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.get(url) do |req|
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if r.nil? || Utils.error_status?(r.status)
          r = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        else
          r = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        end
        
        if r.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetUserFriendsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::PlexRubySDK::Operations::Friend])
          res.friends = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetUserFriendsBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetUserFriendsUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(server_url: T.nilable(String), timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::GetGeoDataResponse) }
    def get_geo_data(server_url = nil, timeout_ms = nil)
      # get_geo_data - Get Geo Data
      # Returns the geolocation and locale data of the caller
      base_url = Utils.template_url(GET_GEO_DATA_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/geoip"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'getGeoData',
        security_source: nil
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.get(url) do |req|
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if r.nil? || Utils.error_status?(r.status)
          r = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        else
          r = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        end
        
        if r.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetGeoDataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetGeoDataGeoData)
          res.geo_data = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetGeoDataBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetGeoDataUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::GetHomeDataResponse) }
    def get_home_data(timeout_ms = nil)
      # get_home_data - Get Plex Home Data
      # Retrieves the home data for the authenticated user, including details like home ID, name, guest access information, and subscription status.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/home"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'getHomeData',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.get(url) do |req|
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if r.nil? || Utils.error_status?(r.status)
          r = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        else
          r = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        end
        
        if r.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetHomeDataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetHomeDataResponseBody)
          res.object = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetHomeDataBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetHomeDataUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(client_id: ::String, include_https: T.nilable(::PlexRubySDK::Operations::IncludeHttps), include_relay: T.nilable(::PlexRubySDK::Operations::IncludeRelay), include_i_pv6: T.nilable(::PlexRubySDK::Operations::IncludeIPv6), server_url: T.nilable(String), timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::GetServerResourcesResponse) }
    def get_server_resources(client_id, include_https = nil, include_relay = nil, include_i_pv6 = nil, server_url = nil, timeout_ms = nil)
      # get_server_resources - Get Server Resources
      # Get Plex server access tokens and server connections
      request = ::PlexRubySDK::Operations::GetServerResourcesRequest.new(
        
        client_id: client_id,
        include_https: include_https,
        include_relay: include_relay,
        include_i_pv6: include_i_pv6
      )
      base_url = Utils.template_url(GET_SERVER_RESOURCES_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/resources"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::GetServerResourcesRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'get-server-resources',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.get(url) do |req|
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          req.params = query_params
          Utils.configure_request_security(req, security)

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if r.nil? || Utils.error_status?(r.status)
          r = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        else
          r = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        end
        
        if r.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetServerResourcesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), T::Array[::PlexRubySDK::Operations::PlexDevice])
          res.plex_devices = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetServerResourcesBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetServerResourcesUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::PlexRubySDK::Operations::GetPinRequest), server_url: T.nilable(String), timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::GetPinResponse) }
    def get_pin(request, server_url = nil, timeout_ms = nil)
      # get_pin - Get a Pin
      # Retrieve a Pin ID from Plex.tv to use for authentication flows
      base_url = Utils.template_url(GET_PIN_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/pins"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::GetPinRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'getPin',
        security_source: nil
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.post(url) do |req|
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?
          req.params = query_params

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if r.nil? || Utils.error_status?(r.status)
          r = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        else
          r = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        end
        
        if r.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetPinResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetPinAuthPinContainer)
          res.auth_pin_container = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetPinBadRequest)
          res.bad_request = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::PlexRubySDK::Operations::GetTokenByPinIdRequest), server_url: T.nilable(String), timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::GetTokenByPinIdResponse) }
    def get_token_by_pin_id(request, server_url = nil, timeout_ms = nil)
      # get_token_by_pin_id - Get Access Token by PinId
      # Retrieve an Access Token from Plex.tv after the Pin has been authenticated
      base_url = Utils.template_url(GET_TOKEN_BY_PIN_ID_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = Utils.generate_url(
        ::PlexRubySDK::Operations::GetTokenByPinIdRequest,
        base_url,
        '/pins/{pinID}',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'getTokenByPinId',
        security_source: nil
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.get(url) do |req|
          req.headers.merge!(headers)
          req.options.timeout = timeout unless timeout.nil?

          @sdk_configuration.hooks.before_request(
            hook_ctx: SDKHooks::BeforeRequestHookContext.new(
              hook_ctx: hook_ctx
            ),
            request: req
          )
        end
      rescue StandardError => e
        error = e
      ensure
        if r.nil? || Utils.error_status?(r.status)
          r = @sdk_configuration.hooks.after_error(
            error: error,
            hook_ctx: SDKHooks::AfterErrorHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        else
          r = @sdk_configuration.hooks.after_success(
            hook_ctx: SDKHooks::AfterSuccessHookContext.new(
              hook_ctx: hook_ctx
            ),
            response: r
          )
        end
        
        if r.nil?
          raise error if !error.nil?
          raise 'no response'
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetTokenByPinIdResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetTokenByPinIdAuthPinContainer)
          res.auth_pin_container = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetTokenByPinIdBadRequest)
          res.bad_request = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetTokenByPinIdResponseBody)
          res.object = out
        end
      end

      res
    end
  end
end
