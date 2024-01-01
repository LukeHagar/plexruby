# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Playlists
    # Playlists are ordered collections of media. They can be dumb (just a list of media) or smart (based on a media query, such as "all albums from 2017"). 
    # They can be organized in (optionally nesting) folders.
    # Retrieving a playlist, or its items, will trigger a refresh of its metadata. 
    # This may cause the duration and number of items to change.
    # 
    extend T::Sig
    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end

    sig { params(request: T.nilable(Operations::CreatePlaylistRequest)).returns(Utils::FieldAugmented) }
    def create_playlist(request)
      # create_playlist - Create a Playlist
      # Create a new playlist. By default the playlist is blank. To create a playlist along with a first item, pass:
      # - `uri` - The content URI for what we're playing (e.g. `library://...`).
      # - `playQueueID` - To create a playlist from an existing play queue.
      # 
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/playlists"
      headers = {}
      query_params = Utils.get_query_params(Operations::CreatePlaylistRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::CreatePlaylistResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::CreatePlaylistResponseBody)
          res.object = out
        end
      end
      res
    end

    sig { params(playlist_type: T.nilable(Operations::PlaylistType), smart: T.nilable(Operations::QueryParamSmart)).returns(Utils::FieldAugmented) }
    def get_playlists(playlist_type = nil, smart = nil)
      # get_playlists - Get All Playlists
      # Get All Playlists given the specified filters.
      request = Operations::GetPlaylistsRequest.new(
        
        playlist_type: playlist_type,
        smart: smart
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/playlists/all"
      headers = {}
      query_params = Utils.get_query_params(Operations::GetPlaylistsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetPlaylistsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::GetPlaylistsResponseBody)
          res.object = out
        end
      end
      res
    end

    sig { params(playlist_id: Float).returns(Utils::FieldAugmented) }
    def get_playlist(playlist_id)
      # get_playlist - Retrieve Playlist
      # Gets detailed metadata for a playlist. A playlist for many purposes (rating, editing metadata, tagging), can be treated like a regular metadata item:
      # Smart playlist details contain the `content` attribute. This is the content URI for the generator. This can then be parsed by a client to provide smart playlist editing.
      # 
      request = Operations::GetPlaylistRequest.new(
        
        playlist_id: playlist_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetPlaylistRequest,
        base_url,
        '/playlists/{playlistID}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetPlaylistResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::GetPlaylistResponseBody)
          res.object = out
        end
      end
      res
    end

    sig { params(playlist_id: Float).returns(Utils::FieldAugmented) }
    def delete_playlist(playlist_id)
      # delete_playlist - Deletes a Playlist
      # This endpoint will delete a playlist
      # 
      request = Operations::DeletePlaylistRequest.new(
        
        playlist_id: playlist_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::DeletePlaylistRequest,
        base_url,
        '/playlists/{playlistID}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::DeletePlaylistResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::DeletePlaylistResponseBody)
          res.object = out
        end
      end
      res
    end

    sig { params(playlist_id: Float).returns(Utils::FieldAugmented) }
    def update_playlist(playlist_id)
      # update_playlist - Update a Playlist
      # From PMS version 1.9.1 clients can also edit playlist metadata using this endpoint as they would via `PUT /library/metadata/{playlistID}`
      # 
      request = Operations::UpdatePlaylistRequest.new(
        
        playlist_id: playlist_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::UpdatePlaylistRequest,
        base_url,
        '/playlists/{playlistID}',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::UpdatePlaylistResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::UpdatePlaylistResponseBody)
          res.object = out
        end
      end
      res
    end

    sig { params(playlist_id: Float, type: Float).returns(Utils::FieldAugmented) }
    def get_playlist_contents(playlist_id, type)
      # get_playlist_contents - Retrieve Playlist Contents
      # Gets the contents of a playlist. Should be paged by clients via standard mechanisms. 
      # By default leaves are returned (e.g. episodes, movies). In order to return other types you can use the `type` parameter. 
      # For example, you could use this to display a list of recently added albums vis a smart playlist. 
      # Note that for dumb playlists, items have a `playlistItemID` attribute which is used for deleting or moving items.
      # 
      request = Operations::GetPlaylistContentsRequest.new(
        
        playlist_id: playlist_id,
        type: type
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::GetPlaylistContentsRequest,
        base_url,
        '/playlists/{playlistID}/items',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::GetPlaylistContentsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::GetPlaylistContentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::GetPlaylistContentsResponseBody)
          res.object = out
        end
      end
      res
    end

    sig { params(playlist_id: Float).returns(Utils::FieldAugmented) }
    def clear_playlist_contents(playlist_id)
      # clear_playlist_contents - Delete Playlist Contents
      # Clears a playlist, only works with dumb playlists. Returns the playlist.
      # 
      request = Operations::ClearPlaylistContentsRequest.new(
        
        playlist_id: playlist_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::ClearPlaylistContentsRequest,
        base_url,
        '/playlists/{playlistID}/items',
        request
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::ClearPlaylistContentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::ClearPlaylistContentsResponseBody)
          res.object = out
        end
      end
      res
    end

    sig { params(playlist_id: Float, uri: String, play_queue_id: Float).returns(Utils::FieldAugmented) }
    def add_playlist_contents(playlist_id, uri, play_queue_id)
      # add_playlist_contents - Adding to a Playlist
      # Adds a generator to a playlist, same parameters as the POST above. With a dumb playlist, this adds the specified items to the playlist. 
      # With a smart playlist, passing a new `uri` parameter replaces the rules for the playlist. Returns the playlist.
      # 
      request = Operations::AddPlaylistContentsRequest.new(
        
        playlist_id: playlist_id,
        uri: uri,
        play_queue_id: play_queue_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        Operations::AddPlaylistContentsRequest,
        base_url,
        '/playlists/{playlistID}/items',
        request
      )
      headers = {}
      query_params = Utils.get_query_params(Operations::AddPlaylistContentsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.put(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::AddPlaylistContentsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::AddPlaylistContentsResponseBody)
          res.object = out
        end
      end
      res
    end

    sig { params(path: String, force: Operations::Force).returns(Utils::FieldAugmented) }
    def upload_playlist(path, force)
      # upload_playlist - Upload Playlist
      # Imports m3u playlists by passing a path on the server to scan for m3u-formatted playlist files, or a path to a single playlist file.
      # 
      request = Operations::UploadPlaylistRequest.new(
        
        path: path,
        force: force
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/playlists/upload"
      headers = {}
      query_params = Utils.get_query_params(Operations::UploadPlaylistRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = Operations::UploadPlaylistResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, Operations::UploadPlaylistResponseBody)
          res.object = out
        end
      end
      res
    end
  end
end