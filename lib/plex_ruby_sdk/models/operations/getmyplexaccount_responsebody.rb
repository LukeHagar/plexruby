# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    
      # MyPlex Account
      class GetMyPlexAccountResponseBody
        extend T::Sig
        include Crystalline::MetadataFields


        field :my_plex, T.nilable(Models::Operations::MyPlex), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('MyPlex') } }


        sig { params(my_plex: T.nilable(Models::Operations::MyPlex)).void }
        def initialize(my_plex: nil)
          @my_plex = my_plex
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @my_plex == other.my_plex
          true
        end
      end
    end
  end
end
