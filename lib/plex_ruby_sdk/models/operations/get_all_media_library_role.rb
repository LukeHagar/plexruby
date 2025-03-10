# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetAllMediaLibraryRole < ::Crystalline::FieldAugmented
      extend T::Sig

      # The display tag for the actor (typically the actor's name).
      field :tag, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('tag') } }


      sig { params(tag: ::String).void }
      def initialize(tag: nil)
        @tag = tag
      end
    end
  end
end
