# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetPlaylistContentsWriter < ::Crystalline::FieldAugmented
      extend T::Sig


      field :tag, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('tag') } }


      sig { params(tag: T.nilable(::String)).void }
      def initialize(tag: nil)
        @tag = tag
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @tag == other.tag
        true
      end
    end
  end
end
