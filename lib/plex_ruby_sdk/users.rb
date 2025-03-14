# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module PlexRubySDK
  extend T::Sig
  class Users
    extend T::Sig
    
    # GET_USERS_SERVERS contains the list of server urls available to the SDK.
    GET_USERS_SERVERS = [
      'https://plex.tv/api', 
    ].freeze


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: T.nilable(::PlexRubySDK::Operations::GetUsersRequest), server_url: T.nilable(String)).returns(::PlexRubySDK::Operations::GetUsersResponse) }
    def get_users(request, server_url = nil)
      # get_users - Get list of all connected users
      # Get list of all users that are friends and have library access with the provided Plex authentication token
      base_url = Utils.template_url(GET_USERS_SERVERS[0], {
      })
      base_url = server_url if !server_url.nil?
      url = "#{base_url}/users"
      headers = Utils.get_headers(request)
      headers['Accept'] = 'application/json;q=1, application/xml;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetUsersResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.body = r.env.response_body if Utils.match_content_type(content_type, 'application/xml')
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetUsersBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetUsersUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end
  end
end
