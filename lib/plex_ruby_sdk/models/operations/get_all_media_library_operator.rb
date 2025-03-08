# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetAllMediaLibraryOperator < ::Crystalline::FieldAugmented
      extend T::Sig


      field :key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('key') } }

      field :title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }


      sig { params(key: ::String, title: ::String).void }
      def initialize(key: nil, title: nil)
        @key = key
        @title = title
      end
    end
  end
end
