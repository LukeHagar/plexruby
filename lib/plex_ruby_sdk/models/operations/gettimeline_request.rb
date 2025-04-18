# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetTimelineRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # The context of the media item
        field :context, ::String, { 'query_param': { 'field_name': 'context', 'style': 'form', 'explode': true } }
        # The duration of the media item
        field :duration, ::Float, { 'query_param': { 'field_name': 'duration', 'style': 'form', 'explode': true } }
        # Whether the media item has MDE
        field :has_mde, ::Float, { 'query_param': { 'field_name': 'hasMDE', 'style': 'form', 'explode': true } }
        # The key of the media item to get the timeline for
        field :key, ::String, { 'query_param': { 'field_name': 'key', 'style': 'form', 'explode': true } }
        # The playback time of the media item
        field :play_back_time, ::Float, { 'query_param': { 'field_name': 'playBackTime', 'style': 'form', 'explode': true } }
        # The play queue item ID of the media item
        field :play_queue_item_id, ::Float, { 'query_param': { 'field_name': 'playQueueItemID', 'style': 'form', 'explode': true } }
        # The rating key of the media item
        field :rating_key, ::Float, { 'query_param': { 'field_name': 'ratingKey', 'style': 'form', 'explode': true } }
        # The row of the media item
        field :row, ::Float, { 'query_param': { 'field_name': 'row', 'style': 'form', 'explode': true } }
        # The state of the media item
        field :state, Models::Operations::State, { 'query_param': { 'field_name': 'state', 'style': 'form', 'explode': true } }
        # The time of the media item
        field :time, ::Float, { 'query_param': { 'field_name': 'time', 'style': 'form', 'explode': true } }


        sig { params(context: ::String, duration: ::Float, has_mde: ::Float, key: ::String, play_back_time: ::Float, play_queue_item_id: ::Float, rating_key: ::Float, row: ::Float, state: Models::Operations::State, time: ::Float).void }
        def initialize(context: nil, duration: nil, has_mde: nil, key: nil, play_back_time: nil, play_queue_item_id: nil, rating_key: nil, row: nil, state: nil, time: nil)
          @context = context
          @duration = duration
          @has_mde = has_mde
          @key = key
          @play_back_time = play_back_time
          @play_queue_item_id = play_queue_item_id
          @rating_key = rating_key
          @row = row
          @state = state
          @time = time
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @context == other.context
          return false unless @duration == other.duration
          return false unless @has_mde == other.has_mde
          return false unless @key == other.key
          return false unless @play_back_time == other.play_back_time
          return false unless @play_queue_item_id == other.play_queue_item_id
          return false unless @rating_key == other.rating_key
          return false unless @row == other.row
          return false unless @state == other.state
          return false unless @time == other.time
          true
        end
      end
    end
  end
end
