# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetTopWatchedContentUser < ::Crystalline::FieldAugmented
      extend T::Sig


      field :id, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }


      sig { params(id: T.nilable(::Integer)).void }
      def initialize(id: nil)
        @id = id
      end
    end
  end
end
