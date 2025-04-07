# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetActorsLibraryDirectory < ::Crystalline::FieldAugmented
      extend T::Sig

      # A fast lookup key for the actor relative url.
      field :fast_key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('fastKey') } }
      # A unique key representing the actor.
      field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }
      # URL for the thumbnail image of the actor.
      field :thumb, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }
      # The name of the actor.
      field :title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }


      sig { params(fast_key: ::String, key: ::String, thumb: ::String, title: ::String).void }
      def initialize(fast_key: nil, key: nil, thumb: nil, title: nil)
        @fast_key = fast_key
        @key = key
        @thumb = thumb
        @title = title
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @fast_key == other.fast_key
        return false unless @key == other.key
        return false unless @thumb == other.thumb
        return false unless @title == other.title
        true
      end
    end
  end
end
