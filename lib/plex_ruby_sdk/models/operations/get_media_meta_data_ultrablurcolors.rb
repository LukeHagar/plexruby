# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class GetMediaMetaDataUltraBlurColors < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # The bottom-left color value.
      field :bottom_left, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bottomLeft') } }
      # The bottom-right color value.
      field :bottom_right, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bottomRight') } }
      # The top-left color value.
      field :top_left, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('topLeft') } }
      # The top-right color value.
      field :top_right, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('topRight') } }


      sig { params(bottom_left: ::String, bottom_right: ::String, top_left: ::String, top_right: ::String).void }
      def initialize(bottom_left: nil, bottom_right: nil, top_left: nil, top_right: nil)
        @bottom_left = bottom_left
        @bottom_right = bottom_right
        @top_left = top_left
        @top_right = top_right
      end
    end
  end
end
