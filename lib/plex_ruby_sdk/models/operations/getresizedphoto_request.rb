# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class GetResizedPhotoRequest
        extend T::Sig
        include Crystalline::MetadataFields

        # The width for the resized photo
        field :blur, ::Float, { 'query_param': { 'field_name': 'blur', 'style': 'form', 'explode': true } }
        # The height for the resized photo
        field :height, ::Float, { 'query_param': { 'field_name': 'height', 'style': 'form', 'explode': true } }
        # images are always scaled proportionally. A value of '1' in minSize will make the smaller native dimension the dimension resized against.
        field :min_size, Models::Operations::MinSize, { 'query_param': { 'field_name': 'minSize', 'style': 'form', 'explode': true } }
        # The opacity for the resized photo
        field :opacity, ::Integer, { 'query_param': { 'field_name': 'opacity', 'style': 'form', 'explode': true } }
        # allow images to be resized beyond native dimensions.
        field :upscale, Models::Operations::Upscale, { 'query_param': { 'field_name': 'upscale', 'style': 'form', 'explode': true } }
        # path to image within Plex
        field :url, ::String, { 'query_param': { 'field_name': 'url', 'style': 'form', 'explode': true } }
        # The width for the resized photo
        field :width, ::Float, { 'query_param': { 'field_name': 'width', 'style': 'form', 'explode': true } }


        sig { params(blur: ::Float, height: ::Float, min_size: Models::Operations::MinSize, opacity: ::Integer, upscale: Models::Operations::Upscale, url: ::String, width: ::Float).void }
        def initialize(blur: nil, height: nil, min_size: nil, opacity: nil, upscale: nil, url: nil, width: nil)
          @blur = blur
          @height = height
          @min_size = min_size
          @opacity = opacity
          @upscale = upscale
          @url = url
          @width = width
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @blur == other.blur
          return false unless @height == other.height
          return false unless @min_size == other.min_size
          return false unless @opacity == other.opacity
          return false unless @upscale == other.upscale
          return false unless @url == other.url
          return false unless @width == other.width
          true
        end
      end
    end
  end
end
