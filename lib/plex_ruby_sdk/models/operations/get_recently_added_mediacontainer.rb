# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetRecentlyAddedMediaContainer < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :size, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }

      field :allow_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowSync') } }

      field :identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('identifier') } }
      # The Meta object is only included in the response if the `includeMeta` parameter is set to `1`.
      # 
      field :meta, T.nilable(::PlexRubySDK::Operations::Meta), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Meta') } }

      field :metadata, T.nilable(T::Array[::PlexRubySDK::Operations::GetRecentlyAddedMetadata]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Metadata') } }

      field :offset, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('offset') } }

      field :total_size, T.nilable(::Integer), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('totalSize') } }


      sig { params(size: ::Integer, allow_sync: T.nilable(T::Boolean), identifier: T.nilable(::String), meta: T.nilable(::PlexRubySDK::Operations::Meta), metadata: T.nilable(T::Array[::PlexRubySDK::Operations::GetRecentlyAddedMetadata]), offset: T.nilable(::Integer), total_size: T.nilable(::Integer)).void }
      def initialize(size: nil, allow_sync: nil, identifier: nil, meta: nil, metadata: nil, offset: nil, total_size: nil)
        @size = size
        @allow_sync = allow_sync
        @identifier = identifier
        @meta = meta
        @metadata = metadata
        @offset = offset
        @total_size = total_size
      end
    end
  end
end
