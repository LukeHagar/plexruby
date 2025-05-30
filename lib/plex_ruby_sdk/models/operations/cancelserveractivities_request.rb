# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class CancelServerActivitiesRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # The UUID of the activity to cancel.
        field :activity_uuid, ::String, { 'path_param': { 'field_name': 'activityUUID', 'style': 'simple', 'explode': false } }


        sig { params(activity_uuid: ::String).void }
        def initialize(activity_uuid: nil)
          @activity_uuid = activity_uuid
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @activity_uuid == other.activity_uuid
          true
        end
      end
    end
  end
end
