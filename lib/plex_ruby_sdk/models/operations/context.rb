# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class Context < ::Crystalline::FieldAugmented
      extend T::Sig


      field :library_section_id, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('librarySectionID') } }


      sig { params(library_section_id: T.nilable(::String)).void }
      def initialize(library_section_id: nil)
        @library_section_id = library_section_id
      end
    end
  end
end
