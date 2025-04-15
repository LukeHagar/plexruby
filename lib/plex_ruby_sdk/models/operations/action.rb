# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class Action
        extend T::Sig
        include Crystalline::MetadataFields


        field :id, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }

        field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }


        sig { params(id: ::String, key: ::String).void }
        def initialize(id: nil, key: nil)
          @id = id
          @key = key
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @id == other.id
          return false unless @key == other.key
          true
        end
      end
    end
  end
end
