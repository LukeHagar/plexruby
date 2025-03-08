# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module PlexRubySDK
  extend T::Sig
  class Log
    extend T::Sig
    # Submit logs to the Log Handler for Plex Media Server
    # 

    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(level: ::PlexRubySDK::Operations::Level, message: ::String, source: ::String).returns(::PlexRubySDK::Operations::LogLineResponse) }
    def log_line(level, message, source)
      # log_line - Logging a single line message.
      # This endpoint will write a single-line log message, including a level and source to the main Plex Media Server log.
      # 
      request = ::PlexRubySDK::Operations::LogLineRequest.new(
        
        level: level,
        message: message,
        source: source
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/log"
      headers = {}
      query_params = Utils.get_query_params(::PlexRubySDK::Operations::LogLineRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::LogLineResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::LogLineBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::LogLineUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { params(request: ::String).returns(::PlexRubySDK::Operations::LogMultiLineResponse) }
    def log_multi_line(request)
      # log_multi_line - Logging a multi-line message
      # This endpoint allows for the batch addition of log entries to the main Plex Media Server log.  
      # It accepts a text/plain request body, where each line represents a distinct log entry.  
      # Each log entry consists of URL-encoded key-value pairs, specifying log attributes such as 'level', 'message', and 'source'.  
      # 
      # Log entries are separated by a newline character (`\n`).  
      # Each entry's parameters should be URL-encoded to ensure accurate parsing and handling of special characters.  
      # This method is efficient for logging multiple entries in a single API call, reducing the overhead of multiple individual requests.  
      # 
      # The 'level' parameter specifies the log entry's severity or importance, with the following integer values:
      # - `0`: Error - Critical issues that require immediate attention.
      # - `1`: Warning - Important events that are not critical but may indicate potential issues.
      # - `2`: Info - General informational messages about system operation.
      # - `3`: Debug - Detailed information useful for debugging purposes.
      # - `4`: Verbose - Highly detailed diagnostic information for in-depth analysis.
      # 
      # The 'message' parameter contains the log text, and 'source' identifies the log message's origin (e.g., an application name or module).
      # 
      # Example of a single log entry format:
      # `level=4&message=Sample%20log%20entry&source=applicationName`
      # 
      # Ensure each parameter is properly URL-encoded to avoid interpretation issues.
      # 
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/log"
      headers = {}
      req_content_type, data, form = Utils.serialize_request_body(request, :request, :string)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::LogMultiLineResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::LogMultiLineBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::LogMultiLineUnauthorized)
          res.unauthorized = out
        end
      end

      res
    end


    sig { returns(::PlexRubySDK::Operations::EnablePaperTrailResponse) }
    def enable_paper_trail
      # enable_paper_trail - Enabling Papertrail
      # This endpoint will enable all Plex Media Serverlogs to be sent to the Papertrail networked logging site for a period of time.
      # 
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/log/networked"
      headers = {}
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        security = !@sdk_configuration.nil? && !@sdk_configuration.security_source.nil? ? @sdk_configuration.security_source.call : nil
        Utils.configure_request_security(req, security) if !security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::PlexRubySDK::Operations::EnablePaperTrailResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
      elsif r.status == 400
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::EnablePaperTrailBadRequest)
          res.bad_request = out
        end
      elsif r.status == 401
        if Utils.match_content_type(content_type, 'application/json')
          out = Crystalline.unmarshal_json(JSON.parse(r.env.response_body), ::PlexRubySDK::Operations::EnablePaperTrailUnauthorized)
          res.unauthorized = out
        end
      elsif r.status == 403
      end

      res
    end
  end
end
