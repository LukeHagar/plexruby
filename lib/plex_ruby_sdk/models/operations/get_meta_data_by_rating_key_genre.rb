# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetMetaDataByRatingKeyGenre < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :filter, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('filter') } }

      field :id, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }

      field :tag, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('tag') } }


      sig { params(filter: T.nilable(::String), id: T.nilable(::Integer), tag: T.nilable(::String)).void }
      def initialize(filter: nil, id: nil, tag: nil)
        @filter = filter
        @id = id
        @tag = tag
      end
    end
  end
end