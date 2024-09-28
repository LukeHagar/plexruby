# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

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


    sig { params(server_url: T.nilable(String)).returns(::PlexRubySDK::Operations::GetCompanionsDataResponse) }
    def get_companions_data(server_url = nil)
      # get_companions_data - Get Companions Data
      # Get Companions Data
      base_url = Utils.template_url(GET_COMPANIONS_DATA_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/companions"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetCompanionsDataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::PlexRubySDK::Operations::ResponseBody])
          res.response_bodies = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetCompanionsDataBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetCompanionsDataUnauthorized)
          res.unauthorized = out
        end
      end
      res
    end


    sig { params(server_url: T.nilable(String)).returns(::PlexRubySDK::Operations::GetUserFriendsResponse) }
    def get_user_friends(server_url = nil)
      # get_user_friends - Get list of friends of the user logged in
      # Get friends of provided auth token.
      base_url = Utils.template_url(GET_USER_FRIENDS_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/friends"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetUserFriendsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::PlexRubySDK::Operations::Friend])
          res.friends = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetUserFriendsBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetUserFriendsUnauthorized)
          res.unauthorized = out
        end
      end
      res
    end


    sig { params(server_url: T.nilable(String)).returns(::PlexRubySDK::Operations::GetGeoDataResponse) }
    def get_geo_data(server_url = nil)
      # get_geo_data - Get Geo Data
      # Returns the geolocation and locale data of the caller
      base_url = Utils.template_url(GET_GEO_DATA_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/geoip"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetGeoDataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetGeoDataGeoData)
          res.geo_data = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetGeoDataBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetGeoDataUnauthorized)
          res.unauthorized = out
        end
      end
      res
    end


    sig { returns(::PlexRubySDK::Operations::GetHomeDataResponse) }
    def get_home_data
      # get_home_data - Get Plex Home Data
      # Retrieves the home data for the authenticated user, including details like home ID, name, guest access information, and subscription status.
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/home"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetHomeDataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetHomeDataResponseBody)
          res.object = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetHomeDataBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetHomeDataUnauthorized)
          res.unauthorized = out
        end
      end
      res
    end


    sig { params(include_https: T.nilable(::PlexRubySDK::Operations::IncludeHttps), include_relay: T.nilable(::PlexRubySDK::Operations::IncludeRelay), include_i_pv6: T.nilable(::PlexRubySDK::Operations::IncludeIPv6), server_url: T.nilable(String)).returns(::PlexRubySDK::Operations::GetServerResourcesResponse) }
    def get_server_resources(include_https = nil, include_relay = nil, include_i_pv6 = nil, server_url = nil)
      # get_server_resources - Get Server Resources
      # Get Plex server access tokens and server connections
      request = ::PlexRubySDK::Operations::GetServerResourcesRequest.new(
        
        include_https: include_https,
        include_relay: include_relay,
        include_i_pv6: include_i_pv6
      )
      base_url = Utils.template_url(GET_SERVER_RESOURCES_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/resources"
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::GetServerResourcesRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetServerResourcesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, T::Array[::PlexRubySDK::Operations::PlexDevice])
          res.plex_devices = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetServerResourcesBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetServerResourcesUnauthorized)
          res.unauthorized = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::PlexRubySDK::Operations::GetPinRequest), server_url: T.nilable(String)).returns(::PlexRubySDK::Operations::GetPinResponse) }
    def get_pin(request, server_url = nil)
      # get_pin - Get a Pin
      # Retrieve a Pin ID from Plex.tv to use for authentication flows
      base_url = Utils.template_url(GET_PIN_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/pins"
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::GetPinRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        req.params = query_params
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetPinResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetPinAuthPinContainer)
          res.auth_pin_container = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetPinBadRequest)
          res.bad_request = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::PlexRubySDK::Operations::GetTokenByPinIdRequest), server_url: T.nilable(String)).returns(::PlexRubySDK::Operations::GetTokenByPinIdResponse) }
    def get_token_by_pin_id(request, server_url = nil)
      # get_token_by_pin_id - Get Access Token by PinId
      # Retrieve an Access Token from Plex.tv after the Pin has been authenticated
      base_url = Utils.template_url(GET_TOKEN_BY_PIN_ID_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = Utils.generate_url(
        ::PlexRubySDK::Operations::GetTokenByPinIdRequest,
        base_url,
        '/pins/{pinID}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::GetTokenByPinIdRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetTokenByPinIdResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetTokenByPinIdAuthPinContainer)
          res.auth_pin_container = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetTokenByPinIdBadRequest)
          res.bad_request = out
        end
      elsif r.status == 404
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetTokenByPinIdResponseBody)
          res.object = out
        end
      end
      res
    end
  end
end
