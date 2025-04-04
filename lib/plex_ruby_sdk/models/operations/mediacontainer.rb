# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
  

    class MediaContainer < ::Crystalline::FieldAugmented
      extend T::Sig


      field :allow_camera_upload, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowCameraUpload') } }

      field :allow_channel_access, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowChannelAccess') } }

      field :allow_media_deletion, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowMediaDeletion') } }

      field :allow_sharing, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowSharing') } }

      field :allow_sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowSync') } }

      field :allow_tuners, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('allowTuners') } }

      field :background_processing, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('backgroundProcessing') } }

      field :certificate, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('certificate') } }

      field :companion_proxy, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('companionProxy') } }

      field :country_code, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('countryCode') } }

      field :diagnostics, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('diagnostics') } }

      field :directory, T.nilable(T::Array[::PlexRubySDK::Operations::Directory]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('Directory') } }

      field :event_stream, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('eventStream') } }

      field :friendly_name, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('friendlyName') } }

      field :hub_search, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hubSearch') } }

      field :item_clusters, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('itemClusters') } }

      field :livetv, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('livetv') } }

      field :machine_identifier, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('machineIdentifier') } }

      field :media_providers, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mediaProviders') } }

      field :multiuser, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('multiuser') } }

      field :music_analysis, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('musicAnalysis') } }

      field :my_plex, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('myPlex') } }

      field :my_plex_mapping_state, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('myPlexMappingState') } }

      field :my_plex_signin_state, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('myPlexSigninState') } }

      field :my_plex_subscription, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('myPlexSubscription') } }

      field :my_plex_username, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('myPlexUsername') } }

      field :offline_transcode, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('offlineTranscode') } }

      field :owner_features, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('ownerFeatures') } }

      field :photo_auto_tag, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('photoAutoTag') } }

      field :platform, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('platform') } }

      field :platform_version, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('platformVersion') } }

      field :plugin_host, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('pluginHost') } }

      field :push_notifications, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('pushNotifications') } }

      field :read_only_libraries, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('readOnlyLibraries') } }

      field :size, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('size') } }

      field :streaming_brain_abr_version, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('streamingBrainABRVersion') } }

      field :streaming_brain_version, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('streamingBrainVersion') } }

      field :sync, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('sync') } }

      field :transcoder_active_video_sessions, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('transcoderActiveVideoSessions') } }

      field :transcoder_audio, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('transcoderAudio') } }

      field :transcoder_lyrics, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('transcoderLyrics') } }

      field :transcoder_photo, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('transcoderPhoto') } }

      field :transcoder_subtitles, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('transcoderSubtitles') } }

      field :transcoder_video, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('transcoderVideo') } }

      field :transcoder_video_bitrates, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('transcoderVideoBitrates') } }

      field :transcoder_video_qualities, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('transcoderVideoQualities') } }

      field :transcoder_video_resolutions, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('transcoderVideoResolutions') } }

      field :updated_at, T.nilable(::Float), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('updatedAt') } }

      field :updater, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('updater') } }

      field :version, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('version') } }

      field :voice_search, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('voiceSearch') } }


      sig { params(allow_camera_upload: T.nilable(T::Boolean), allow_channel_access: T.nilable(T::Boolean), allow_media_deletion: T.nilable(T::Boolean), allow_sharing: T.nilable(T::Boolean), allow_sync: T.nilable(T::Boolean), allow_tuners: T.nilable(T::Boolean), background_processing: T.nilable(T::Boolean), certificate: T.nilable(T::Boolean), companion_proxy: T.nilable(T::Boolean), country_code: T.nilable(::String), diagnostics: T.nilable(::String), directory: T.nilable(T::Array[::PlexRubySDK::Operations::Directory]), event_stream: T.nilable(T::Boolean), friendly_name: T.nilable(::String), hub_search: T.nilable(T::Boolean), item_clusters: T.nilable(T::Boolean), livetv: T.nilable(::Float), machine_identifier: T.nilable(::String), media_providers: T.nilable(T::Boolean), multiuser: T.nilable(T::Boolean), music_analysis: T.nilable(::Float), my_plex: T.nilable(T::Boolean), my_plex_mapping_state: T.nilable(::String), my_plex_signin_state: T.nilable(::String), my_plex_subscription: T.nilable(T::Boolean), my_plex_username: T.nilable(::String), offline_transcode: T.nilable(::Float), owner_features: T.nilable(::String), photo_auto_tag: T.nilable(T::Boolean), platform: T.nilable(::String), platform_version: T.nilable(::String), plugin_host: T.nilable(T::Boolean), push_notifications: T.nilable(T::Boolean), read_only_libraries: T.nilable(T::Boolean), size: T.nilable(::Float), streaming_brain_abr_version: T.nilable(::Float), streaming_brain_version: T.nilable(::Float), sync: T.nilable(T::Boolean), transcoder_active_video_sessions: T.nilable(::Float), transcoder_audio: T.nilable(T::Boolean), transcoder_lyrics: T.nilable(T::Boolean), transcoder_photo: T.nilable(T::Boolean), transcoder_subtitles: T.nilable(T::Boolean), transcoder_video: T.nilable(T::Boolean), transcoder_video_bitrates: T.nilable(::String), transcoder_video_qualities: T.nilable(::String), transcoder_video_resolutions: T.nilable(::String), updated_at: T.nilable(::Float), updater: T.nilable(T::Boolean), version: T.nilable(::String), voice_search: T.nilable(T::Boolean)).void }
      def initialize(allow_camera_upload: nil, allow_channel_access: nil, allow_media_deletion: nil, allow_sharing: nil, allow_sync: nil, allow_tuners: nil, background_processing: nil, certificate: nil, companion_proxy: nil, country_code: nil, diagnostics: nil, directory: nil, event_stream: nil, friendly_name: nil, hub_search: nil, item_clusters: nil, livetv: nil, machine_identifier: nil, media_providers: nil, multiuser: nil, music_analysis: nil, my_plex: nil, my_plex_mapping_state: nil, my_plex_signin_state: nil, my_plex_subscription: nil, my_plex_username: nil, offline_transcode: nil, owner_features: nil, photo_auto_tag: nil, platform: nil, platform_version: nil, plugin_host: nil, push_notifications: nil, read_only_libraries: nil, size: nil, streaming_brain_abr_version: nil, streaming_brain_version: nil, sync: nil, transcoder_active_video_sessions: nil, transcoder_audio: nil, transcoder_lyrics: nil, transcoder_photo: nil, transcoder_subtitles: nil, transcoder_video: nil, transcoder_video_bitrates: nil, transcoder_video_qualities: nil, transcoder_video_resolutions: nil, updated_at: nil, updater: nil, version: nil, voice_search: nil)
        @allow_camera_upload = allow_camera_upload
        @allow_channel_access = allow_channel_access
        @allow_media_deletion = allow_media_deletion
        @allow_sharing = allow_sharing
        @allow_sync = allow_sync
        @allow_tuners = allow_tuners
        @background_processing = background_processing
        @certificate = certificate
        @companion_proxy = companion_proxy
        @country_code = country_code
        @diagnostics = diagnostics
        @directory = directory
        @event_stream = event_stream
        @friendly_name = friendly_name
        @hub_search = hub_search
        @item_clusters = item_clusters
        @livetv = livetv
        @machine_identifier = machine_identifier
        @media_providers = media_providers
        @multiuser = multiuser
        @music_analysis = music_analysis
        @my_plex = my_plex
        @my_plex_mapping_state = my_plex_mapping_state
        @my_plex_signin_state = my_plex_signin_state
        @my_plex_subscription = my_plex_subscription
        @my_plex_username = my_plex_username
        @offline_transcode = offline_transcode
        @owner_features = owner_features
        @photo_auto_tag = photo_auto_tag
        @platform = platform
        @platform_version = platform_version
        @plugin_host = plugin_host
        @push_notifications = push_notifications
        @read_only_libraries = read_only_libraries
        @size = size
        @streaming_brain_abr_version = streaming_brain_abr_version
        @streaming_brain_version = streaming_brain_version
        @sync = sync
        @transcoder_active_video_sessions = transcoder_active_video_sessions
        @transcoder_audio = transcoder_audio
        @transcoder_lyrics = transcoder_lyrics
        @transcoder_photo = transcoder_photo
        @transcoder_subtitles = transcoder_subtitles
        @transcoder_video = transcoder_video
        @transcoder_video_bitrates = transcoder_video_bitrates
        @transcoder_video_qualities = transcoder_video_qualities
        @transcoder_video_resolutions = transcoder_video_resolutions
        @updated_at = updated_at
        @updater = updater
        @version = version
        @voice_search = voice_search
      end
    end
  end
end
