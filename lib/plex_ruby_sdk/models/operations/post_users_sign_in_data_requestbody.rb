# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
      POST_USERS_SIGN_IN_DATA_REQUEST_BODY_SERVERS = [
        'https://plex.tv/api/v2'
      ].freeze
    
      # Login credentials
      class PostUsersSignInDataRequestBody
        extend T::Sig
        include Crystalline::MetadataFields


        field :login, ::String, { 'form': { 'field_name': 'login' } }

        field :password, ::String, { 'form': { 'field_name': 'password' } }

        field :remember_me, T.nilable(T::Boolean), { 'form': { 'field_name': 'rememberMe' } }

        field :verification_code, T.nilable(::String), { 'form': { 'field_name': 'verificationCode' } }


        sig { params(login: ::String, password: ::String, remember_me: T.nilable(T::Boolean), verification_code: T.nilable(::String)).void }
        def initialize(login: nil, password: nil, remember_me: nil, verification_code: nil)
          @login = login
          @password = password
          @remember_me = remember_me
          @verification_code = verification_code
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @login == other.login
          return false unless @password == other.password
          return false unless @remember_me == other.remember_me
          return false unless @verification_code == other.verification_code
          true
        end
      end
    end
  end
end
