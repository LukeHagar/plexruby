# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module PlexRubySDK
  extend T::Sig
  class Authentication
    extend T::Sig
    
    # GET_TOKEN_DETAILS_SERVERS contains the list of server urls available to the SDK.
    GET_TOKEN_DETAILS_SERVERS = [
      'https://plex.tv/api/v2', 
    ].freeze
    
    # POST_USERS_SIGN_IN_DATA_SERVERS contains the list of server urls available to the SDK.
    POST_USERS_SIGN_IN_DATA_SERVERS = [
      'https://plex.tv/api/v2', 
    ].freeze
    # API Calls regarding authentication for Plex Media Server
    # 

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(type: ::PlexRubySDK::Operations::GetTransientTokenQueryParamType, scope: ::PlexRubySDK::Operations::Scope).returns(::PlexRubySDK::Operations::GetTransientTokenResponse) }
    def get_transient_token(type, scope)
      # get_transient_token - Get a Transient Token
      # This endpoint provides the caller with a temporary token with the same access level as the caller's token. These tokens are valid for up to 48 hours and are destroyed if the server instance is restarted.
      # 
      request = ::PlexRubySDK::Operations::GetTransientTokenRequest.new(
        
        type: type,
        scope: scope
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/security/token"
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::GetTransientTokenRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetTransientTokenResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetTransientTokenBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetTransientTokenUnauthorized)
          res.unauthorized = out
        end
      end
      res
    end


    sig { params(source: ::String).returns(::PlexRubySDK::Operations::GetSourceConnectionInformationResponse) }
    def get_source_connection_information(source)
      # get_source_connection_information - Get Source Connection Information
      # If a caller requires connection details and a transient token for a source that is known to the server, for example a cloud media provider or shared PMS, then this endpoint can be called. This endpoint is only accessible with either an admin token or a valid transient token generated from an admin token.
      # Note: requires Plex Media Server >= 1.15.4.
      # 
      request = ::PlexRubySDK::Operations::GetSourceConnectionInformationRequest.new(
        
        source: source
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/security/resources"
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::GetSourceConnectionInformationRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetSourceConnectionInformationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetSourceConnectionInformationBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetSourceConnectionInformationUnauthorized)
          res.unauthorized = out
        end
      end
      res
    end


    sig { params(server_url: T.nilable(String)).returns(::PlexRubySDK::Operations::GetTokenDetailsResponse) }
    def get_token_details(server_url = nil)
      # get_token_details - Get Token Details
      # Get the User data from the provided X-Plex-Token
      base_url = Utils.template_url(GET_TOKEN_DETAILS_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/user"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetTokenDetailsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetTokenDetailsUserPlexAccount)
          res.user_plex_account = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetTokenDetailsBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetTokenDetailsUnauthorized)
          res.unauthorized = out
        end
      end
      res
    end


    sig { params(request: T.nilable(::PlexRubySDK::Operations::PostUsersSignInDataRequest), server_url: T.nilable(String)).returns(::PlexRubySDK::Operations::PostUsersSignInDataResponse) }
    def post_users_sign_in_data(request, server_url = nil)
      # post_users_sign_in_data - Get User Sign In Data
      # Sign in user with username and password and return user data with Plex authentication token
      base_url = Utils.template_url(POST_USERS_SIGN_IN_DATA_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/users/signin"
      headers = Utils.get_headers(request, @sdk_configuration.globals)
      req_content_type, data, form = Utils.serialize_request_body(request, :request_body, :form)
      headers['content-type'] = req_content_type
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::PostUsersSignInDataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::PostUsersSignInDataUserPlexAccount)
          res.user_plex_account = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::PostUsersSignInDataBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::PostUsersSignInDataUnauthorized)
          res.unauthorized = out
        end
      end
      res
    end
  end
end
