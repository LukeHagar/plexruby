# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module PlexRubySDK
  extend T::Sig

  class PlexAPI
    extend T::Sig

    attr_accessor :server, :media, :video, :activities, :butler, :plex, :hubs, :search, :library, :watchlist, :log, :playlists, :authentication, :statistics, :sessions, :updater, :users

    sig do
      params(client: Faraday::Request,
             security: T.nilable(Shared::Security),
             protocol: T.nilable(::PlexRubySDK::ServerVariables::ServerProtocol),
             ip: T.nilable(::String),
             port: T.nilable(::String),
             server_idx: Integer,
             server_url: String,
             url_params: T::Hash[Symbol, String]).void
    end
    def initialize(client: nil,
                   security: nil,
                   protocol: nil,
                   ip: nil,
                   port: nil,
                   server_idx: nil,
                   server_url: nil,
                   url_params: nil)

      ## Instantiates the SDK configuring it with the provided parameters.
      # @param [Faraday::Request] client The faraday HTTP client to use for all operations
      # @param [Shared::Security] security The security details required for authentication
      # @param [T.nilable(::PlexRubySDK::ServerVariables::ServerProtocol)] protocol: Allows setting the protocol variable for url substitution
      # @param [T.nilable(::String)] ip: Allows setting the ip variable for url substitution
      # @param [T.nilable(::String)] port: Allows setting the port variable for url substitution
      # @param [::Integer] server_idx The index of the server to use for all operations
      # @param [::String] server_url The server URL to use for all operations
      # @param [::Hash<::Symbol, ::String>] url_params Parameters to optionally template the server URL with

      if client.nil?
        client = Faraday.new(request: {
                          params_encoder: Faraday::FlatParamsEncoder
                        }) do |f|
          f.request :multipart, {}
          # f.response :logger
        end
      end

      if !server_url.nil?
        if !url_params.nil?
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

      @sdk_configuration = SDKConfiguration.new(client, security, server_url, server_idx, server_params)
      init_sdks
    end

    sig { params(server_url: String, params: T.nilable(T::Hash[Symbol, String])).void }
    def config_server_url(server_url, params)
      if !params.nil?
        server_url = Utils.template_url(server_url, params)
      end
      @sdk_configuration.server_url = server_url
      init_sdks
    end

    sig { params(server_idx: Integer, params: T.nilable(T::Hash[Symbol, String])).void }
    def config_server(server_idx, params)
      raise StandardError, "Invalid server index #{server_idx}" if server_idx.negative? || server_idx >= SERVERS.length
      @sdk_configuration.server_idx = server_idx
      if !params.nil?
        @sdk_configuration.server_params[server_idx] = params
      end
      init_sdks
    end

    sig { params(security: ::PlexRubySDK::Shared::Security).void }
    def config_security(security)
      @sdk_configuration.security = security
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
