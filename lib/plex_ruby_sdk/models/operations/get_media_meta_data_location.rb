# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetMediaMetaDataLocation < ::Crystalline::FieldAugmented
      extend T::Sig

      # The file path for the location.
      field :path, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('path') } }


      sig { params(path: ::String).void }
      def initialize(path: nil)
        @path = path
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @path == other.path
        true
      end
    end
  end
end
