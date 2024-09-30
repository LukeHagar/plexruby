# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class MetaDataRating < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # A URI or path to the rating image.
      field :image, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('image') } }
      # The type of rating (e.g., audience, critic).
      field :type, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }
      # The value of the rating.
      field :value, ::Float, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('value') } }


      sig { params(image: ::String, type: ::String, value: ::Float).void }
      def initialize(image: nil, type: nil, value: nil)
        @image = image
        @type = type
        @value = value
      end
    end
  end
end