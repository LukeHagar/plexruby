# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module PlexRubySDK
  extend T::Sig

  SERVERS = [
    '{protocol}://{ip}:{port}', # 1 - The full address of your Plex Server
  ].freeze
  # Contains the list of servers available to the SDK

  class SDKConfiguration < ::PlexRubySDK::Utils::FieldAugmented
    extend T::Sig

    field :client, T.nilable(Faraday::Connection)
    field :security, T.nilable(::PlexRubySDK::Shared::Security)
    field :server_url, T.nilable(String)
    field :server_idx, T.nilable(Integer)
    field :server_params, Array[Hash[Symbol, String]], { 'default_factory': Array}
    field :globals, Hash[Symbol, Hash[Symbol, Hash[Symbol, Object]]]
    field :language, String
    field :openapi_doc_version, String
    field :sdk_version, String
    field :gen_version, String
    field :user_agent, String


    sig { params(client: Faraday::Connection, security: T.nilable(::PlexRubySDK::Shared::Security), server_url: T.nilable(String), server_idx: T.nilable(Integer), server_params: T::Array[String], globals: T::Hash[Symbol, T::Hash[Symbol, T::Hash[Symbol, Object]]]).void }
    def initialize(client, security, server_url, server_idx, server_params, globals)
      @client = client
      @server_url = server_url
      @server_idx = server_idx.nil? ? 0 : server_idx
      raise StandardError, "Invalid server index #{server_idx}" if @server_idx.negative? || @server_idx >= SERVERS.length
      @server_params = server_params
      @security = security
      @globals = globals.nil? ? {} : globals
      @language = 'ruby'
      @openapi_doc_version = '0.0.3'
      @sdk_version = '0.3.2'
      @gen_version = '2.415.8'
      @user_agent = 'speakeasy-sdk/ruby 0.3.2 2.415.8 0.0.3 plexruby'
    end

    sig { returns([String, T::Hash[Symbol, String]]) }
    def get_server_details
      return [@server_url.delete_suffix('/'), {}] if !@server_url.nil?
      [SERVERS[@server_idx], @server_params[@server_idx]]
    end
  end
end
