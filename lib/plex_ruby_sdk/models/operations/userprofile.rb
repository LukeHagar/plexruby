# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    USER_PROFILE_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  

    class UserProfile < ::Crystalline::FieldAugmented
      extend T::Sig

      # If the account has automatically select audio and subtitle tracks enabled
      field :auto_select_audio, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('autoSelectAudio') } }

      field :auto_select_subtitle, ::PlexRubySDK::Operations::AutoSelectSubtitle, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('autoSelectSubtitle'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::AutoSelectSubtitle, false) } }
      # The preferred audio language for the account
      field :default_audio_language, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('defaultAudioLanguage') } }

      field :default_subtitle_accessibility, ::PlexRubySDK::Operations::DefaultSubtitleAccessibility, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('defaultSubtitleAccessibility'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::DefaultSubtitleAccessibility, false) } }

      field :default_subtitle_forced, ::PlexRubySDK::Operations::DefaultSubtitleForced, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('defaultSubtitleForced'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::DefaultSubtitleForced, false) } }
      # The preferred subtitle language for the account
      field :default_subtitle_language, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('defaultSubtitleLanguage') } }

      field :media_reviews_visibility, ::PlexRubySDK::Operations::MediaReviewsVisibility, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaReviewsVisibility'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::MediaReviewsVisibility, false) } }

      field :watched_indicator, ::PlexRubySDK::Operations::WatchedIndicator, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('watchedIndicator'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::WatchedIndicator, false) } }


      sig { params(auto_select_audio: T::Boolean, auto_select_subtitle: ::PlexRubySDK::Operations::AutoSelectSubtitle, default_audio_language: ::String, default_subtitle_accessibility: ::PlexRubySDK::Operations::DefaultSubtitleAccessibility, default_subtitle_forced: ::PlexRubySDK::Operations::DefaultSubtitleForced, default_subtitle_language: ::String, media_reviews_visibility: ::PlexRubySDK::Operations::MediaReviewsVisibility, watched_indicator: ::PlexRubySDK::Operations::WatchedIndicator).void }
      def initialize(auto_select_audio: nil, auto_select_subtitle: nil, default_audio_language: nil, default_subtitle_accessibility: nil, default_subtitle_forced: nil, default_subtitle_language: nil, media_reviews_visibility: nil, watched_indicator: nil)
        @auto_select_audio = auto_select_audio
        @auto_select_subtitle = auto_select_subtitle
        @default_audio_language = default_audio_language
        @default_subtitle_accessibility = default_subtitle_accessibility
        @default_subtitle_forced = default_subtitle_forced
        @default_subtitle_language = default_subtitle_language
        @media_reviews_visibility = media_reviews_visibility
        @watched_indicator = watched_indicator
      end
    end
  end
end
