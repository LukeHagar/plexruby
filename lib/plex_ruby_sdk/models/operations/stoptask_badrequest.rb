# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  
    # Bad Request - A parameter was not specified, or was specified incorrectly.
    class StopTaskBadRequest < ::Crystalline::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[::PlexRubySDK::Operations::StopTaskErrors]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[::PlexRubySDK::Operations::StopTaskErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end

      def ==(other)
        return false unless other.is_a? self.class
        return false unless @errors == other.errors
        true
      end
    end
  end
end
