# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class Library
    extend T::Sig
    # API Calls interacting with Plex Media Server Libraries
    # 

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(url: ::String, type: T.nilable(::Float)).returns(::OpenApiSDK::Operations::GetFileHashResponse) }
    def get_file_hash(url, type = nil)
      # get_file_hash - Get Hash Value
      # This resource returns hash values for local files
      request = ::OpenApiSDK::Operations::GetFileHashRequest.new(
        
        url: url,
        type: type
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/library/hashes"
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetFileHashRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetFileHashResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetFileHashResponseBody)
          res.object = out
        end
      end
      res
    end


    sig { returns(::OpenApiSDK::Operations::GetRecentlyAddedResponse) }
    def get_recently_added
      # get_recently_added - Get Recently Added
      # This endpoint will return the recently added content.
      # 
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/library/recentlyAdded"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetRecentlyAddedResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetRecentlyAddedResponseBody)
          res.two_hundred_application_json_object = out
        end
      elsif r.status == 400
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetRecentlyAddedLibraryResponseBody)
          res.four_hundred_and_one_application_json_object = out
        end
      end
      res
    end


    sig { returns(::OpenApiSDK::Operations::GetLibrariesResponse) }
    def get_libraries
      # get_libraries - Get All Libraries
      # A library section (commonly referred to as just a library) is a collection of media. 
      # Libraries are typed, and depending on their type provide either a flat or a hierarchical view of the media. 
      # For example, a music library has an artist > albums > tracks structure, whereas a movie library is flat.
      # 
      # Libraries have features beyond just being a collection of media; for starters, they include information about supported types, filters and sorts. 
      # This allows a client to provide a rich interface around the media (e.g. allow sorting movies by release year).
      # 
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/library/sections"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetLibrariesResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetLibrariesResponseBody)
          res.two_hundred_application_json_object = out
        end
      elsif r.status == 400
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetLibrariesLibraryResponseBody)
          res.four_hundred_and_one_application_json_object = out
        end
      end
      res
    end


    sig { params(section_id: ::Float, include_details: T.nilable(::OpenApiSDK::Operations::IncludeDetails)).returns(::OpenApiSDK::Operations::GetLibraryResponse) }
    def get_library(section_id, include_details = nil)
      # get_library - Get Library Details
      # ## Library Details Endpoint
      # 
      # This endpoint provides comprehensive details about the library, focusing on organizational aspects rather than the content itself.   
      # 
      # The details include:
      # 
      # ### Directories
      # Organized into three categories:
      # 
      # - **Primary Directories**: 
      #   - Used in some clients for quick access to media subsets (e.g., "All", "On Deck").
      #   - Most can be replicated via media queries.
      #   - Customizable by users.
      # 
      # - **Secondary Directories**:
      #   - Marked with `secondary="1"`.
      #   - Used in older clients for structured navigation.
      # 
      # - **Special Directories**:
      #   - Includes a "By Folder" entry for filesystem-based browsing.
      #   - Contains an obsolete `search="1"` entry for on-the-fly search dialog creation.
      # 
      # ### Types
      # Each type in the library comes with a set of filters and sorts, aiding in building dynamic media controls:
      # 
      # - **Type Object Attributes**:
      #   - `key`: Endpoint for the media list of this type.
      #   - `type`: Metadata type (if standard Plex type).
      #   - `title`: Title for this content type (e.g., "Movies").
      # 
      # - **Filter Objects**:
      #   - Subset of the media query language.
      #   - Attributes include `filter` (name), `filterType` (data type), `key` (endpoint for value range), and `title`.
      # 
      # - **Sort Objects**:
      #   - Description of sort fields.
      #   - Attributes include `defaultDirection` (asc/desc), `descKey` and `key` (sort parameters), and `title`.
      # 
      # > **Note**: Filters and sorts are optional; without them, no filtering controls are rendered.
      # 
      request = ::OpenApiSDK::Operations::GetLibraryRequest.new(
        
        section_id: section_id,
        include_details: include_details
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetLibraryRequest,
        base_url,
        '/library/sections/{sectionId}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::GetLibraryRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetLibraryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetLibraryResponseBody)
          res.two_hundred_application_json_object = out
        end
      elsif r.status == 400
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetLibraryLibraryResponseBody)
          res.four_hundred_and_one_application_json_object = out
        end
      end
      res
    end


    sig { params(section_id: ::Float).returns(::OpenApiSDK::Operations::DeleteLibraryResponse) }
    def delete_library(section_id)
      # delete_library - Delete Library Section
      # Delate a library using a specific section
      request = ::OpenApiSDK::Operations::DeleteLibraryRequest.new(
        
        section_id: section_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::DeleteLibraryRequest,
        base_url,
        '/library/sections/{sectionId}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.delete(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::DeleteLibraryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::DeleteLibraryResponseBody)
          res.object = out
        end
      end
      res
    end


    sig { params(section_id: ::Integer, tag: ::OpenApiSDK::Operations::Tag).returns(::OpenApiSDK::Operations::GetLibraryItemsResponse) }
    def get_library_items(section_id, tag)
      # get_library_items - Get Library Items
      # Fetches details from a specific section of the library identified by a section key and a tag. The tag parameter accepts the following values:
      # - `all`: All items in the section.
      # - `unwatched`: Items that have not been played.
      # - `newest`: Items that are recently released.
      # - `recentlyAdded`: Items that are recently added to the library.
      # - `recentlyViewed`: Items that were recently viewed.
      # - `onDeck`: Items to continue watching.
      # - `collection`: Items categorized by collection.
      # - `edition`: Items categorized by edition.
      # - `genre`: Items categorized by genre.
      # - `year`: Items categorized by year of release.
      # - `decade`: Items categorized by decade.
      # - `director`: Items categorized by director.
      # - `actor`: Items categorized by starring actor.
      # - `country`: Items categorized by country of origin.
      # - `contentRating`: Items categorized by content rating.
      # - `rating`: Items categorized by rating.
      # - `resolution`: Items categorized by resolution.
      # - `firstCharacter`: Items categorized by the first letter.
      # - `folder`: Items categorized by folder.
      # 
      request = ::OpenApiSDK::Operations::GetLibraryItemsRequest.new(
        
        section_id: section_id,
        tag: tag
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetLibraryItemsRequest,
        base_url,
        '/library/sections/{sectionId}/{tag}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetLibraryItemsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetLibraryItemsResponseBody)
          res.object = out
        end
      end
      res
    end


    sig { params(section_id: ::Float).returns(::OpenApiSDK::Operations::RefreshLibraryResponse) }
    def refresh_library(section_id)
      # refresh_library - Refresh Library
      # This endpoint Refreshes the library.
      # 
      request = ::OpenApiSDK::Operations::RefreshLibraryRequest.new(
        
        section_id: section_id
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::RefreshLibraryRequest,
        base_url,
        '/library/sections/{sectionId}/refresh',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::RefreshLibraryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if [200, 400].include?(r.status)
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::RefreshLibraryResponseBody)
          res.object = out
        end
      end
      res
    end


    sig { params(section_id: ::Integer, type: ::OpenApiSDK::Operations::Type).returns(::OpenApiSDK::Operations::SearchLibraryResponse) }
    def search_library(section_id, type)
      # search_library - Search Library
      # Search for content within a specific section of the library.
      # 
      # ### Types
      # Each type in the library comes with a set of filters and sorts, aiding in building dynamic media controls:
      # 
      # - **Type Object Attributes**:
      #   - `type`: Metadata type (if standard Plex type).  
      #   - `title`: Title for this content type (e.g., "Movies").
      # 
      # - **Filter Objects**:
      #   - Subset of the media query language.
      #   - Attributes include `filter` (name), `filterType` (data type), `key` (endpoint for value range), and `title`.
      # 
      # - **Sort Objects**:
      #   - Description of sort fields.
      #   - Attributes include `defaultDirection` (asc/desc), `descKey` and `key` (sort parameters), and `title`.
      # 
      # > **Note**: Filters and sorts are optional; without them, no filtering controls are rendered.
      # 
      request = ::OpenApiSDK::Operations::SearchLibraryRequest.new(
        
        section_id: section_id,
        type: type
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::SearchLibraryRequest,
        base_url,
        '/library/sections/{sectionId}/search',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::SearchLibraryRequest, request, @sdk_configuration.globals)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::SearchLibraryResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::SearchLibraryResponseBody)
          res.object = out
        end
      end
      res
    end


    sig { params(rating_key: ::Float).returns(::OpenApiSDK::Operations::GetMetadataResponse) }
    def get_metadata(rating_key)
      # get_metadata - Get Items Metadata
      # This endpoint will return the metadata of a library item specified with the ratingKey.
      # 
      request = ::OpenApiSDK::Operations::GetMetadataRequest.new(
        
        rating_key: rating_key
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetMetadataRequest,
        base_url,
        '/library/metadata/{ratingKey}',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetMetadataResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetMetadataResponseBody)
          res.two_hundred_application_json_object = out
        end
      elsif r.status == 400
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetMetadataLibraryResponseBody)
          res.four_hundred_and_one_application_json_object = out
        end
      end
      res
    end


    sig { params(rating_key: ::Float).returns(::OpenApiSDK::Operations::GetMetadataChildrenResponse) }
    def get_metadata_children(rating_key)
      # get_metadata_children - Get Items Children
      # This endpoint will return the children of of a library item specified with the ratingKey.
      # 
      request = ::OpenApiSDK::Operations::GetMetadataChildrenRequest.new(
        
        rating_key: rating_key
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::GetMetadataChildrenRequest,
        base_url,
        '/library/metadata/{ratingKey}/children',
        request,
        @sdk_configuration.globals
      )
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetMetadataChildrenResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetMetadataChildrenResponseBody)
          res.two_hundred_application_json_object = out
        end
      elsif r.status == 400
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetMetadataChildrenLibraryResponseBody)
          res.four_hundred_and_one_application_json_object = out
        end
      end
      res
    end


    sig { returns(::OpenApiSDK::Operations::GetOnDeckResponse) }
    def get_on_deck
      # get_on_deck - Get On Deck
      # This endpoint will return the on deck content.
      # 
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/library/onDeck"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::GetOnDeckResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetOnDeckResponseBody)
          res.two_hundred_application_json_object = out
        end
      elsif r.status == 400
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::GetOnDeckLibraryResponseBody)
          res.four_hundred_and_one_application_json_object = out
        end
      end
      res
    end
  end
end