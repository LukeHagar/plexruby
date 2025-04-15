# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetAvailableClientsMediaContainer
        extend T::Sig
        include Crystalline::MetadataFields


        field :server, T.nilable(T::Array[Models::Operations::Server]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Server') } }

        field :size, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }


        sig { params(server: T.nilable(T::Array[Models::Operations::Server]), size: T.nilable(::Float)).void }
        def initialize(server: nil, size: nil)
          @server = server
          @size = size
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @server == other.server
          return false unless @size == other.size
          true
        end
      end
    end
  end
end
