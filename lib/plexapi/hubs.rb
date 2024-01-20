# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Hubs
    # Hubs are a structured two-dimensional container for media, generally represented by multiple horizontal rows.
    # 
    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(count: T.nilable(Float), only_transient: T.nilable(Operations::OnlyTransient)).returns(Utils::FieldAugmented) }
    def get_global_hubs(count = nil, only_transient = nil)
      # get_global_hubs - Get Global Hubs
      # Get Global Hubs filtered by the parameters provided.
      request = Operations::GetGlobalHubsRequest.new(
        
        count: count,
        only_transient: only_transient
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/hubs"
      headers = {}
      query_params = Utils.get_query_params(Operations::GetGlobalHubsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetGlobalHubsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::GetGlobalHubsResponseBody)
          res.object = out
        end
      end
      res
    end

    sig { params(section_id: Float, count: T.nilable(Float), only_transient: T.nilable(Operations::QueryParamOnlyTransient)).returns(Utils::FieldAugmented) }
    def get_library_hubs(section_id, count = nil, only_transient = nil)
      # get_library_hubs - Get library specific hubs
      # This endpoint will return a list of library specific hubs
      # 
      request = Operations::GetLibraryHubsRequest.new(
        
        section_id: section_id,
        count: count,
        only_transient: only_transient
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetLibraryHubsRequest,
        base_url,
        '/hubs/sections/{sectionId}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetLibraryHubsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetLibraryHubsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::GetLibraryHubsResponseBody)
          res.object = out
        end
      end
      res
    end
  end
end
