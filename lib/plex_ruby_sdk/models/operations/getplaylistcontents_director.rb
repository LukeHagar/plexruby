# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetPlaylistContentsDirector < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :tag, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('tag') } }


      sig { params(tag: T.nilable(::String)).void }
      def initialize(tag: nil)
        @tag = tag
      end
    end
  end
end
