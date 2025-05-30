# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Models
    module Operations
    

      class Setting
        extend T::Sig
        include Crystalline::MetadataFields


        field :advanced, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('advanced') } }

        field :default, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('default') } }

        field :enum_values, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('enumValues') } }

        field :group, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('group') } }

        field :hidden, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hidden') } }

        field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }

        field :label, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('label') } }

        field :summary, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('summary') } }

        field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('type') } }

        field :value, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('value') } }


        sig { params(advanced: T.nilable(T::Boolean), default: T.nilable(T::Boolean), enum_values: T.nilable(::String), group: T.nilable(::String), hidden: T.nilable(T::Boolean), id: T.nilable(::String), label: T.nilable(::String), summary: T.nilable(::String), type: T.nilable(::String), value: T.nilable(T::Boolean)).void }
        def initialize(advanced: nil, default: nil, enum_values: nil, group: nil, hidden: nil, id: nil, label: nil, summary: nil, type: nil, value: nil)
          @advanced = advanced
          @default = default
          @enum_values = enum_values
          @group = group
          @hidden = hidden
          @id = id
          @label = label
          @summary = summary
          @type = type
          @value = value
        end

        def ==(other)
          return false unless other.is_a? self.class
          return false unless @advanced == other.advanced
          return false unless @default == other.default
          return false unless @enum_values == other.enum_values
          return false unless @group == other.group
          return false unless @hidden == other.hidden
          return false unless @id == other.id
          return false unless @label == other.label
          return false unless @summary == other.summary
          return false unless @type == other.type
          return false unless @value == other.value
          true
        end
      end
    end
  end
end
