# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetRecentlyAddedMediaContainer < ::Crystalline::FieldAugmented
      extend T::Sig

      # Indicates whether syncing is allowed.
      field :allow_sync, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowSync') } }
      # An plugin identifier for the media container.
      field :identifier, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('identifier') } }
      # Offset value for pagination.
      field :offset, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('offset') } }
      # Number of media items returned in this response.
      field :size, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }
      # Total number of media items in the library.
      field :total_size, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('totalSize') } }
      # The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
      # 
      field :meta, T.nilable(::PlexRubySDK::Operations::Meta), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Meta') } }
      # An array of metadata items.
      field :metadata, T.nilable(T::Array[::PlexRubySDK::Operations::GetRecentlyAddedMetadata]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Metadata') } }


      sig { params(allow_sync: T::Boolean, identifier: ::String, offset: ::Integer, size: ::Integer, total_size: ::Integer, meta: T.nilable(::PlexRubySDK::Operations::Meta), metadata: T.nilable(T::Array[::PlexRubySDK::Operations::GetRecentlyAddedMetadata])).void }
      def initialize(allow_sync: nil, identifier: nil, offset: nil, size: nil, total_size: nil, meta: nil, metadata: nil)
        @allow_sync = allow_sync
        @identifier = identifier
        @offset = offset
        @size = size
        @total_size = total_size
        @meta = meta
        @metadata = metadata
      end
    end
  end
end
