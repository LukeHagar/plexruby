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
  class Playlists
    extend T::Sig
    # Playlists are ordered collections of media. They can be dumb (just a list of media) or smart (based on a media query, such as "all albums from 2017"). 
    # They can be organized in (optionally nesting) folders.
    # Retrieving a playlist, or its items, will trigger a refresh of its metadata. 
    # This may cause the duration and number of items to change.
    # 

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(request: T.nilable(::PlexRubySDK::Operations::CreatePlaylistRequest), timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::CreatePlaylistResponse) }
    def create_playlist(request, timeout_ms = nil)
      # create_playlist - Create a Playlist
      # Create a new playlist. By default the playlist is blank. To create a playlist along with a first item, pass:
      # - `uri` - The content URI for what we're playing (e.g. `server://1234/com.plexapp.plugins.library/library/metadata/1`).
      # - `playQueueID` - To create a playlist from an existing play queue.
      # 
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/playlists"
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::CreatePlaylistRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'createPlaylist',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.post(url) do |req|
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

      res = ::PlexRubySDK::Operations::CreatePlaylistResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::CreatePlaylistResponseBody)
          res.object = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::CreatePlaylistBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::CreatePlaylistUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(playlist_type: T.nilable(::PlexRubySDK::Operations::PlaylistType), smart: T.nilable(::PlexRubySDK::Operations::QueryParamSmart), timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::GetPlaylistsResponse) }
    def get_playlists(playlist_type = nil, smart = nil, timeout_ms = nil)
      # get_playlists - Get All Playlists
      # Get All Playlists given the specified filters.
      request = ::PlexRubySDK::Operations::GetPlaylistsRequest.new(
        
        playlist_type: playlist_type,
        smart: smart
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/playlists"
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::GetPlaylistsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'getPlaylists',
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

      res = ::PlexRubySDK::Operations::GetPlaylistsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetPlaylistsResponseBody)
          res.object = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetPlaylistsBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetPlaylistsUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(playlist_id: ::Float, timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::GetPlaylistResponse) }
    def get_playlist(playlist_id, timeout_ms = nil)
      # get_playlist - Retrieve Playlist
      # Gets detailed metadata for a playlist. A playlist for many purposes (rating, editing metadata, tagging), can be treated like a regular metadata item:
      # Smart playlist details contain the `content` attribute. This is the content URI for the generator. This can then be parsed by a client to provide smart playlist editing.
      # 
      request = ::PlexRubySDK::Operations::GetPlaylistRequest.new(
        
        playlist_id: playlist_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::PlexRubySDK::Operations::GetPlaylistRequest,
        base_url,
        '/playlists/{playlistID}',
        request
      )
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
        operation_id: 'getPlaylist',
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

      res = ::PlexRubySDK::Operations::GetPlaylistResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetPlaylistResponseBody)
          res.object = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetPlaylistBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetPlaylistUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(playlist_id: ::Float, timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::DeletePlaylistResponse) }
    def delete_playlist(playlist_id, timeout_ms = nil)
      # delete_playlist - Deletes a Playlist
      # This endpoint will delete a playlist
      # 
      request = ::PlexRubySDK::Operations::DeletePlaylistRequest.new(
        
        playlist_id: playlist_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::PlexRubySDK::Operations::DeletePlaylistRequest,
        base_url,
        '/playlists/{playlistID}',
        request
      )
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
        operation_id: 'deletePlaylist',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.delete(url) do |req|
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

      res = ::PlexRubySDK::Operations::DeletePlaylistResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 204
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::DeletePlaylistBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::DeletePlaylistUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(playlist_id: ::Float, title: T.nilable(::String), summary: T.nilable(::String), timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::UpdatePlaylistResponse) }
    def update_playlist(playlist_id, title = nil, summary = nil, timeout_ms = nil)
      # update_playlist - Update a Playlist
      # From PMS version 1.9.1 clients can also edit playlist metadata using this endpoint as they would via `PUT /library/metadata/{playlistID}`
      # 
      request = ::PlexRubySDK::Operations::UpdatePlaylistRequest.new(
        
        playlist_id: playlist_id,
        title: title,
        summary: summary
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::PlexRubySDK::Operations::UpdatePlaylistRequest,
        base_url,
        '/playlists/{playlistID}',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::UpdatePlaylistRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'updatePlaylist',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.put(url) do |req|
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

      res = ::PlexRubySDK::Operations::UpdatePlaylistResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::UpdatePlaylistBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::UpdatePlaylistUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(playlist_id: ::Float, type: ::PlexRubySDK::Operations::GetPlaylistContentsQueryParamType, timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::GetPlaylistContentsResponse) }
    def get_playlist_contents(playlist_id, type, timeout_ms = nil)
      # get_playlist_contents - Retrieve Playlist Contents
      # Gets the contents of a playlist. Should be paged by clients via standard mechanisms. 
      # By default leaves are returned (e.g. episodes, movies). In order to return other types you can use the `type` parameter. 
      # For example, you could use this to display a list of recently added albums vis a smart playlist. 
      # Note that for dumb playlists, items have a `playlistItemID` attribute which is used for deleting or moving items.
      # 
      request = ::PlexRubySDK::Operations::GetPlaylistContentsRequest.new(
        
        playlist_id: playlist_id,
        type: type
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::PlexRubySDK::Operations::GetPlaylistContentsRequest,
        base_url,
        '/playlists/{playlistID}/items',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::GetPlaylistContentsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'getPlaylistContents',
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

      res = ::PlexRubySDK::Operations::GetPlaylistContentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetPlaylistContentsResponseBody)
          res.object = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetPlaylistContentsBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::GetPlaylistContentsUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(playlist_id: ::Float, timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::ClearPlaylistContentsResponse) }
    def clear_playlist_contents(playlist_id, timeout_ms = nil)
      # clear_playlist_contents - Delete Playlist Contents
      # Clears a playlist, only works with dumb playlists. Returns the playlist.
      # 
      request = ::PlexRubySDK::Operations::ClearPlaylistContentsRequest.new(
        
        playlist_id: playlist_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::PlexRubySDK::Operations::ClearPlaylistContentsRequest,
        base_url,
        '/playlists/{playlistID}/items',
        request
      )
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
        operation_id: 'clearPlaylistContents',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.delete(url) do |req|
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

      res = ::PlexRubySDK::Operations::ClearPlaylistContentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::ClearPlaylistContentsBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::ClearPlaylistContentsUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(playlist_id: ::Float, uri: ::String, play_queue_id: T.nilable(::Float), timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::AddPlaylistContentsResponse) }
    def add_playlist_contents(playlist_id, uri, play_queue_id = nil, timeout_ms = nil)
      # add_playlist_contents - Adding to a Playlist
      # Adds a generator to a playlist, same parameters as the POST to create. With a dumb playlist, this adds the specified items to the playlist.
      # With a smart playlist, passing a new `uri` parameter replaces the rules for the playlist. Returns the playlist.
      # 
      request = ::PlexRubySDK::Operations::AddPlaylistContentsRequest.new(
        
        playlist_id: playlist_id,
        uri: uri,
        play_queue_id: play_queue_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::PlexRubySDK::Operations::AddPlaylistContentsRequest,
        base_url,
        '/playlists/{playlistID}/items',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::AddPlaylistContentsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'addPlaylistContents',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.put(url) do |req|
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

      res = ::PlexRubySDK::Operations::AddPlaylistContentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::AddPlaylistContentsResponseBody)
          res.object = out
        end
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::AddPlaylistContentsBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::AddPlaylistContentsUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(path: ::String, force: ::PlexRubySDK::Operations::QueryParamForce, section_id: ::Integer, timeout_ms: T.nilable(Integer)).returns(::PlexRubySDK::Operations::UploadPlaylistResponse) }
    def upload_playlist(path, force, section_id, timeout_ms = nil)
      # upload_playlist - Upload Playlist
      # Imports m3u playlists by passing a path on the server to scan for m3u-formatted playlist files, or a path to a single playlist file.
      # 
      request = ::PlexRubySDK::Operations::UploadPlaylistRequest.new(
        
        path: path,
        force: force,
        section_id: section_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/playlists/upload"
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::UploadPlaylistRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil

      timeout = (timeout_ms.to_f / 1000) unless timeout_ms.nil?
      timeout ||= @sdk_configuration.timeout

      connection = @sdk_configuration.client

      hook_ctx = SDKHooks::HookContext.new(
        base_url: base_url,
        oauth2_scopes: [],
        operation_id: 'uploadPlaylist',
        security_source: @sdk_configuration.security_source
      )

      error = T.let(nil, T.nilable(StandardError))
      r = T.let(nil, T.nilable(Faraday::Response))
      
      begin
        r = connection.post(url) do |req|
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

      res = ::PlexRubySDK::Operations::UploadPlaylistResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::UploadPlaylistBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::UploadPlaylistUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end
  end
end
