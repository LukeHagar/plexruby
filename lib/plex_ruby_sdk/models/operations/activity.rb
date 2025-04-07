# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class Activity < ::Crystalline::FieldAugmented
      extend T::Sig


      field :cancellable, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('cancellable') } }

      field :context, T.nilable(::PlexRubySDK::Operations::Context), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Context') } }

      field :progress, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('progress') } }

      field :subtitle, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('subtitle') } }

      field :title, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }

      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }

      field :user_id, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('userID') } }

      field :uuid, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('uuid') } }


      sig { params(cancellable: T.nilable(T::Boolean), context: T.nilable(::PlexRubySDK::Operations::Context), progress: T.nilable(::Float), subtitle: T.nilable(::String), title: T.nilable(::String), type: T.nilable(::String), user_id: T.nilable(::Float), uuid: T.nilable(::String)).void }
      def initialize(cancellable: nil, context: nil, progress: nil, subtitle: nil, title: nil, type: nil, user_id: nil, uuid: nil)
        @cancellable = cancellable
        @context = context
        @progress = progress
        @subtitle = subtitle
        @title = title
        @type = type
        @user_id = user_id
        @uuid = uuid
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @cancellable == other.cancellable
        return false unless @context == other.context
        return false unless @progress == other.progress
        return false unless @subtitle == other.subtitle
        return false unless @title == other.title
        return false unless @type == other.type
        return false unless @user_id == other.user_id
        return false unless @uuid == other.uuid
        true
      end
    end
  end
end
