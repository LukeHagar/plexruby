# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class Producer < ::Crystalline::FieldAugmented
      extend T::Sig

      # The filter string used to query this producer.
      field :filter, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('filter') } }
      # Unique identifier for the producer.
      field :id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }
      # The name of the producer
      field :tag, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('tag') } }
      # A unique key associated with the producer's tag, used for internal identification.
      field :tag_key, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('tagKey') } }
      # The URL of the thumbnail image for the actor.
      field :thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }


      sig { params(filter: ::String, id: ::Integer, tag: ::String, tag_key: T.nilable(::String), thumb: T.nilable(::String)).void }
      def initialize(filter: nil, id: nil, tag: nil, tag_key: nil, thumb: nil)
        @filter = filter
        @id = id
        @tag = tag
        @tag_key = tag_key
        @thumb = thumb
      end
    end
  end
end
