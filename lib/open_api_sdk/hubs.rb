# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Hubs
    extend T::Sig
    # Hubs are a structured two-dimensional container for media, generally represented by multiple horizontal rows.
    # 

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(count: T.nilable(::Float), only_transient: T.nilable(::OpenApiSDK::Operations::OnlyTransient)).returns(::OpenApiSDK::Operations::GetGlobalHubsResponse) }
    def get_global_hubs(count = nil, only_transient = nil)
      # get_global_hubs - Get Global Hubs
      # Get Global Hubs filtered by the parameters provided.
      request = ::OpenApiSDK::Operations::GetGlobalHubsRequest.new(
        
        count: count,
        only_transient: only_transient
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/hubs"
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetGlobalHubsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetGlobalHubsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetGlobalHubsResponseBody)
          res.two_hundred_application_json_object = out
        end
      elsif r.status == 400
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetGlobalHubsHubsResponseBody)
          res.four_hundred_and_one_application_json_object = out
        end
      end
      res
    end


    sig { params(section_id: ::Float, count: T.nilable(::Float), only_transient: T.nilable(::OpenApiSDK::Operations::QueryParamOnlyTransient)).returns(::OpenApiSDK::Operations::GetLibraryHubsResponse) }
    def get_library_hubs(section_id, count = nil, only_transient = nil)
      # get_library_hubs - Get library specific hubs
      # This endpoint will return a list of library specific hubs
      # 
      request = ::OpenApiSDK::Operations::GetLibraryHubsRequest.new(
        
        section_id: section_id,
        count: count,
        only_transient: only_transient
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetLibraryHubsRequest,
        base_url,
        '/hubs/sections/{sectionId}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetLibraryHubsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetLibraryHubsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetLibraryHubsResponseBody)
          res.two_hundred_application_json_object = out
        end
      elsif r.status == 400
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetLibraryHubsHubsResponseBody)
          res.four_hundred_and_one_application_json_object = out
        end
      end
      res
    end
  end
end
