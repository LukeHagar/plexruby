# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetLibrarySectionsAllUltraBlurColors
        extend T::Sig
        include Crystalline::MetadataFields


        field :bottom_left, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bottomLeft') } }

        field :bottom_right, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('bottomRight') } }

        field :top_left, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('topLeft') } }

        field :top_right, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('topRight') } }


        sig { params(bottom_left: ::String, bottom_right: ::String, top_left: ::String, top_right: ::String).void }
        def initialize(bottom_left: nil, bottom_right: nil, top_left: nil, top_right: nil)
          @bottom_left = bottom_left
          @bottom_right = bottom_right
          @top_left = top_left
          @top_right = top_right
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @bottom_left == other.bottom_left
          return false unless @bottom_right == other.bottom_right
          return false unless @top_left == other.top_left
          return false unless @top_right == other.top_right
          true
        end
      end
    end
  end
end
