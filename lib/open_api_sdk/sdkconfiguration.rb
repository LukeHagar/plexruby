# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig

  SERVERS = [
    '{protocol}://{ip}:{port}', # 1 - The full address of your Plex Server
  ].freeze
  # Contains the list of servers available to the SDK

  class SDKConfiguration < ::OpenApiSDK::Utils::FieldAugmented
    extend T::Sig

    field :client, T.nilable(Faraday::Connection)
    field :security, T.nilable(::OpenApiSDK::Shared::Security)
    field :server_url, T.nilable(String)
    field :server_idx, T.nilable(Integer)
    field :server_params, Array[Hash[Symbol, String]], { 'default_factory': Array}
    field :language, String
    field :openapi_doc_version, String
    field :sdk_version, String
    field :gen_version, String
    field :user_agent, String


    sig { params(client: Faraday::Connection, security: T.nilable(::OpenApiSDK::Shared::Security), server_url: T.nilable(String), server_idx: T.nilable(Integer), server_params: T::Array[String]).void }
    def initialize(client, security, server_url, server_idx, server_params)
      @client = client
      @server_url = server_url
      @server_idx = server_idx.nil? ? 0 : server_idx
      raise StandardError, "Invalid server index #{server_idx}" if @server_idx.negative? || @server_idx >= SERVERS.length
      @server_params = server_params
      @security = security
      @language = 'ruby'
      @openapi_doc_version = '0.0.3'
      @sdk_version = '0.0.1'
      @gen_version = '2.275.4'
      @user_agent = 'speakeasy-sdk/ruby 0.0.1 2.275.4 0.0.3 plexruby'
    end

    sig { returns([String, T::Hash[Symbol, String]]) }
    def get_server_details
      return [@server_url.delete_suffix('/'), {}] if !@server_url.nil?
      [SERVERS[@server_idx], @server_params[@server_idx]]
    end
  end
end
