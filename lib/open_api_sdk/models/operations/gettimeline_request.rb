# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetTimelineRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

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
      field :state, ::OpenApiSDK::Operations::State, { 'query_param': { 'field_name': 'state', 'style': 'form', 'explode': true } }
      # The time of the media item
      field :time, ::Float, { 'query_param': { 'field_name': 'time', 'style': 'form', 'explode': true } }


      sig { params(context: ::String, duration: ::Float, has_mde: ::Float, key: ::String, play_back_time: ::Float, play_queue_item_id: ::Float, rating_key: ::Float, row: ::Float, state: ::OpenApiSDK::Operations::State, time: ::Float).void }
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
    end
  end
end