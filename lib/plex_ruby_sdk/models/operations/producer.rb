# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class Producer < ::Crystalline::FieldAugmented
      extend T::Sig

      # The filter string for the role.
      field :filter, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('filter') } }
      # The unique role identifier.
      field :id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }
      # The actor's name.
      field :tag, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('tag') } }
      # A key associated with the actor tag.
      field :tag_key, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('tagKey') } }
      # The character name or role.
      field :role, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('role') } }
      # URL for the role thumbnail image.
      field :thumb, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }


      sig { params(filter: ::String, id: ::Integer, tag: ::String, tag_key: ::String, role: T.nilable(::String), thumb: T.nilable(::String)).void }
      def initialize(filter: nil, id: nil, tag: nil, tag_key: nil, role: nil, thumb: nil)
        @filter = filter
        @id = id
        @tag = tag
        @tag_key = tag_key
        @role = role
        @thumb = thumb
      end
    end
  end
end
