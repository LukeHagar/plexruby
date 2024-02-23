# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Plex
    extend T::Sig
    
    # GET_PIN_SERVERS contains the list of server urls available to the SDK.
    GET_PIN_SERVERS = [
      'https://plex.tv/api/v2',
    ].freeze
    
    # GET_TOKEN_SERVERS contains the list of server urls available to the SDK.
    GET_TOKEN_SERVERS = [
      'https://plex.tv/api/v2',
    ].freeze
    # API Calls that perform operations directly against https://Plex.tv
    # 

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(x_plex_client_identifier: ::String, strong: T.nilable(T::Boolean), server_url: T.nilable(String)).returns(::OpenApiSDK::Operations::GetPinResponse) }
    def get_pin(x_plex_client_identifier, strong = nil, server_url = nil)
      # get_pin - Get a Pin
      # Retrieve a Pin from Plex.tv for authentication flows
      request = ::OpenApiSDK::Operations::GetPinRequest.new(
        
        x_plex_client_identifier: x_plex_client_identifier,
        strong: strong
      )
      base_url = Utils.template_url(GET_PIN_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/pins"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetPinRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetPinResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetPinResponseBody)
          res.two_hundred_application_json_object = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetPinPlexResponseBody)
          res.four_hundred_application_json_object = out
        end
      end
      res
    end


    sig { params(pin_id: ::String, x_plex_client_identifier: ::String, server_url: T.nilable(String)).returns(::OpenApiSDK::Operations::GetTokenResponse) }
    def get_token(pin_id, x_plex_client_identifier, server_url = nil)
      # get_token - Get Access Token
      # Retrieve an Access Token from Plex.tv after the Pin has already been authenticated
      request = ::OpenApiSDK::Operations::GetTokenRequest.new(
        
        pin_id: pin_id,
        x_plex_client_identifier: x_plex_client_identifier
      )
      base_url = Utils.template_url(GET_TOKEN_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetTokenRequest,
        base_url,
        '/pins/{pinID}',
        request
      )
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetTokenResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetTokenResponseBody)
          res.object = out
        end
      end
      res
    end
  end
end
