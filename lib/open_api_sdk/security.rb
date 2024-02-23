# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Security
    extend T::Sig
    # API Calls against Security for Plex Media Server
    # 

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(type: ::OpenApiSDK::Operations::GetTransientTokenQueryParamType, scope: ::OpenApiSDK::Operations::Scope).returns(::OpenApiSDK::Operations::GetTransientTokenResponse) }
    def get_transient_token(type, scope)
      # get_transient_token - Get a Transient Token.
      # This endpoint provides the caller with a temporary token with the same access level as the caller's token. These tokens are valid for up to 48 hours and are destroyed if the server instance is restarted.
      # 
      request = ::OpenApiSDK::Operations::GetTransientTokenRequest.new(
        
        type: type,
        scope: scope
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/security/token"
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetTransientTokenRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetTransientTokenResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetTransientTokenResponseBody)
          res.object = out
        end
      end
      res
    end


    sig { params(source: ::String).returns(::OpenApiSDK::Operations::GetSourceConnectionInformationResponse) }
    def get_source_connection_information(source)
      # get_source_connection_information - Get Source Connection Information
      # If a caller requires connection details and a transient token for a source that is known to the server, for example a cloud media provider or shared PMS, then this endpoint can be called. This endpoint is only accessible with either an admin token or a valid transient token generated from an admin token.
      # Note: requires Plex Media Server >= 1.15.4.
      # 
      request = ::OpenApiSDK::Operations::GetSourceConnectionInformationRequest.new(
        
        source: source
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/security/resources"
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetSourceConnectionInformationRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetSourceConnectionInformationResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetSourceConnectionInformationResponseBody)
          res.object = out
        end
      end
      res
    end
  end
end
