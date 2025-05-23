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

  class PlexAPI
    extend T::Sig

    attr_accessor :server, :media, :video, :activities, :butler, :plex, :hubs, :search, :library, :watchlist, :log, :playlists, :authentication, :statistics, :sessions, :updater, :users

    sig do
      params(
        client: T.nilable(Faraday::Connection),
        retry_config: T.nilable(::PlexRubySDK::Utils::RetryConfig),
        timeout_ms: T.nilable(Integer),
        security: T.nilable(Models::Shared::Security),
        security_source: T.nilable(T.proc.returns(Models::Shared::Security)),
        protocol: T.nilable(::PlexRubySDK::Models::ServerVariables::ServerProtocol),
        ip: T.nilable(::String),
        port: T.nilable(::String),
        server_idx: T.nilable(Integer),
        server_url: T.nilable(String),
        url_params: T.nilable(T::Hash[Symbol, String])
      ).void
    end
    def initialize(client: nil, retry_config: nil, timeout_ms: nil, security: nil, security_source: nil, protocol: nil, ip: nil, port: nil, server_idx: nil, server_url: nil, url_params: nil)
      ## Instantiates the SDK configuring it with the provided parameters.
      # @param [T.nilable(Faraday::Connection)] client The faraday HTTP client to use for all operations
      # @param [T.nilable(::PlexRubySDK::Utils::RetryConfig)] retry_config The retry configuration to use for all operations
      # @param [T.nilable(Integer)] timeout_ms Request timeout in milliseconds for all operations
      # @param [T.nilable(Models::Shared::Security)] security: The security details required for authentication
      # @param [T.proc.returns(T.nilable(Models::Shared::Security))] security_source: A function that returns security details required for authentication
      # @param [T.nilable(::PlexRubySDK::Models::ServerVariables::ServerProtocol)] protocol: Allows setting the protocol variable for url substitution
      # @param [T.nilable(::String)] ip: Allows setting the ip variable for url substitution
      # @param [T.nilable(::String)] port: Allows setting the port variable for url substitution
      # @param [T.nilable(::Integer)] server_idx The index of the server to use for all operations
      # @param [T.nilable(::String)] server_url The server URL to use for all operations
      # @param [T.nilable(::Hash<::Symbol, ::String>)] url_params Parameters to optionally template the server URL with

      connection_options = {
        request: {
          params_encoder: Faraday::FlatParamsEncoder
        }
      }
      connection_options[:request][:timeout] = (timeout_ms.to_f / 1000) unless timeout_ms.nil?

      client ||= Faraday.new(**connection_options) do |f|
        f.request :multipart, {}
        # f.response :logger, nil, { headers: true, bodies: true, errors: true }
      end

      if !server_url.nil?
        if !url_params.nil?
          server_url = Utils.template_url(server_url, url_params)
        elsif !protocol.nil? || !ip.nil? || !port.nil?
          url_params = {
            protocol: protocol || 'https',
            ip: ip || '10.10.10.47',
            port: port || '32400',
          }
          server_url = Utils.template_url(server_url, url_params)
        end
      end

      server_idx = 0 if server_idx.nil?

      server_params = [
        {
            protocol: protocol || 'https',
            ip: ip || '10.10.10.47',
            port: port || '32400',
        },
      ]
      hooks = SDKHooks::Hooks.new
      @sdk_configuration = SDKConfiguration.new(
        client,
        hooks,
        retry_config,
        timeout_ms,
        security,
        security_source,
        server_url,
        server_idx,
        server_params
      )

      original_server_url = @sdk_configuration.get_server_details.first
      new_server_url, @sdk_configuration.client = hooks.sdk_init(base_url: original_server_url, client: client)
      @sdk_configuration.server_url = new_server_url if new_server_url != original_server_url

      init_sdks
    end

    sig { void }
    def init_sdks
      @server = Server.new(@sdk_configuration)
      @media = Media.new(@sdk_configuration)
      @video = Video.new(@sdk_configuration)
      @activities = Activities.new(@sdk_configuration)
      @butler = Butler.new(@sdk_configuration)
      @plex = Plex.new(@sdk_configuration)
      @hubs = Hubs.new(@sdk_configuration)
      @search = Search.new(@sdk_configuration)
      @library = Library.new(@sdk_configuration)
      @watchlist = Watchlist.new(@sdk_configuration)
      @log = Log.new(@sdk_configuration)
      @playlists = Playlists.new(@sdk_configuration)
      @authentication = Authentication.new(@sdk_configuration)
      @statistics = Statistics.new(@sdk_configuration)
      @sessions = Sessions.new(@sdk_configuration)
      @updater = Updater.new(@sdk_configuration)
      @users = Users.new(@sdk_configuration)
    end
  end
end
