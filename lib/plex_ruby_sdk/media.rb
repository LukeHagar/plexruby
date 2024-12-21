# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module PlexRubySDK
  extend T::Sig
  class Media
    extend T::Sig
    # API Calls interacting with Plex Media Server Media
    # 

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(key: ::Float).returns(::PlexRubySDK::Operations::MarkPlayedResponse) }
    def mark_played(key)
      # mark_played - Mark Media Played
      # This will mark the provided media key as Played.
      request = ::PlexRubySDK::Operations::MarkPlayedRequest.new(
        
        key: key
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/:/scrobble"
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::MarkPlayedRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::MarkPlayedResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::MarkPlayedBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::MarkPlayedUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(key: ::Float).returns(::PlexRubySDK::Operations::MarkUnplayedResponse) }
    def mark_unplayed(key)
      # mark_unplayed - Mark Media Unplayed
      # This will mark the provided media key as Unplayed.
      request = ::PlexRubySDK::Operations::MarkUnplayedRequest.new(
        
        key: key
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/:/unscrobble"
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::MarkUnplayedRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::MarkUnplayedResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::MarkUnplayedBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::MarkUnplayedUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(key: ::String, time: ::Float, state: ::String).returns(::PlexRubySDK::Operations::UpdatePlayProgressResponse) }
    def update_play_progress(key, time, state)
      # update_play_progress - Update Media Play Progress
      # This API command can be used to update the play progress of a media item.
      # 
      request = ::PlexRubySDK::Operations::UpdatePlayProgressRequest.new(
        
        key: key,
        time: time,
        state: state
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/:/progress"
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::UpdatePlayProgressRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::UpdatePlayProgressResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::UpdatePlayProgressBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::UpdatePlayProgressUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::PlexRubySDK::Operations::GetBannerImageRequest)).returns(::PlexRubySDK::Operations::GetBannerImageResponse) }
    def get_banner_image(request)
      # get_banner_image - Get Banner Image
      # Gets the banner image of the media item
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::PlexRubySDK::Operations::GetBannerImageRequest,
        base_url,
        '/library/metadata/{ratingKey}/banner',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::GetBannerImageRequest, request)
      headers['Accept'] = 'application/json;q=1, image/jpeg;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetBannerImageResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.headers = r.headers
        res.bytes = r.env.response_body if Utils.match_content_type(content_type, 'image/jpeg')
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetBannerImageBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetBannerImageUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(request: T.nilable(::PlexRubySDK::Operations::GetThumbImageRequest)).returns(::PlexRubySDK::Operations::GetThumbImageResponse) }
    def get_thumb_image(request)
      # get_thumb_image - Get Thumb Image
      # Gets the thumbnail image of the media item
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::PlexRubySDK::Operations::GetThumbImageRequest,
        base_url,
        '/library/metadata/{ratingKey}/thumb',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::GetThumbImageRequest, request)
      headers['Accept'] = 'application/json;q=1, image/jpeg;q=0'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::GetThumbImageResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        res.headers = r.headers
        res.bytes = r.env.response_body if Utils.match_content_type(content_type, 'image/jpeg')
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetThumbImageBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::PlexRubySDK::Operations::GetThumbImageUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end
  end
end
