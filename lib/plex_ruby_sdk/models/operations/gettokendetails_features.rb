# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_TOKEN_DETAILS_FEATURES_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  

    class GetTokenDetailsFeatures < T::Enum
      enums do
        ANDROID_DOLBY_VISION = new('Android - Dolby Vision')
        ANDROID_PI_P = new('Android - PiP')
        CU_SUNSET = new('CU Sunset')
        HRK_ENABLE_EUR = new('HRK_enable_EUR')
        TREBLE_SHOW_FEATURES = new('TREBLE-show-features')
        AD_COUNTDOWN_TIMER = new('ad-countdown-timer')
        ADAPTIVE_BITRATE = new('adaptive_bitrate')
        ALBUM_TYPES = new('album-types')
        ALLOW_DVR = new('allow_dvr')
        AMAZON_LOOP_DEBUG = new('amazon-loop-debug')
        AVOD_AD_ANALYSIS = new('avod-ad-analysis')
        AVOD_NEW_MEDIA = new('avod-new-media')
        BLACKLIST_GET_SIGNIN = new('blacklist_get_signin')
        BOOST_VOICES = new('boost-voices')
        CAMERA_UPLOAD = new('camera_upload')
        CLIENT_RADIO_STATIONS = new('client-radio-stations')
        CLOUDFLARE_TURNSTILE_REQUIRED = new('cloudflare-turnstile-required')
        CLOUDSYNC = new('cloudsync')
        COLLECTIONS = new('collections')
        COMMENTS_AND_REPLIES_PUSH_NOTIFICATIONS = new('comments_and_replies_push_notifications')
        COMMUNITY_ACCESS_PLEX_TV = new('community_access_plex_tv')
        COMPANIONS_SONOS = new('companions_sonos')
        CONTENT_FILTER = new('content_filter')
        CUSTOM_HOME_REMOVAL = new('custom-home-removal')
        DISABLE_HOME_USER_FRIENDSHIPS = new('disable_home_user_friendships')
        DISABLE_SHARING_FRIENDSHIPS = new('disable_sharing_friendships')
        DOWNLOADS_GATING = new('downloads-gating')
        DRM_SUPPORT = new('drm_support')
        DVR = new('dvr')
        DVR_BLOCK_UNSUPPORTED_COUNTRIES = new('dvr-block-unsupported-countries')
        EPG_RECENT_CHANNELS = new('epg-recent-channels')
        EXCLUDE_RESTRICTIONS = new('exclude restrictions')
        FEDERATED_AUTH = new('federated-auth')
        FRIEND_REQUEST_PUSH_NOTIFICATIONS = new('friend_request_push_notifications')
        GRANDFATHER_SYNC = new('grandfather-sync')
        GUIDED_UPGRADE = new('guided-upgrade')
        HARDWARE_TRANSCODING = new('hardware_transcoding')
        HOME = new('home')
        HWTRANSCODE = new('hwtranscode')
        IMAGGA_V2 = new('imagga-v2')
        INCREASE_PASSWORD_COMPLEXITY = new('increase-password-complexity')
        IOS14_PRIVACY_BANNER = new('ios14-privacy-banner')
        ITERABLE_NOTIFICATION_TOKENS = new('iterable-notification-tokens')
        ITEM_CLUSTERS = new('item_clusters')
        KEEP_PAYMENT_METHOD = new('keep-payment-method')
        KEVIN_BACON = new('kevin-bacon')
        KOREA_CONSENT = new('korea-consent')
        LE_ISRG_ROOT_X1 = new('le_isrg_root_x1')
        LETS_ENCRYPT = new('lets_encrypt')
        LIGHTNING_DVR_PIVOT = new('lightning-dvr-pivot')
        LIVE_TV_SUPPORT_INCOMPLETE_SEGMENTS = new('live-tv-support-incomplete-segments')
        LIVETV = new('livetv')
        LYRICS = new('lyrics')
        METADATA_SEARCH = new('metadata_search')
        MUSIC_ANALYSIS = new('music-analysis')
        MUSIC_VIDEOS = new('music_videos')
        NEW_PLEX_PASS_PRICES = new('new_plex_pass_prices')
        NEWS_PROVIDER_SUNSET_MODAL = new('news-provider-sunset-modal')
        NOMINATIM = new('nominatim')
        PASS = new('pass')
        PHOTOS_FAVORITES = new('photos-favorites')
        PHOTOS_METADATA_EDITION = new('photos-metadata-edition')
        PHOTOS_V6_EDIT = new('photosV6-edit')
        PHOTOS_V6_TV_ALBUMS = new('photosV6-tv-albums')
        PMS_HEALTH = new('pms_health')
        PREMIUM_DASHBOARD = new('premium-dashboard')
        PREMIUM_MUSIC_METADATA = new('premium_music_metadata')
        RADIO = new('radio')
        RATE_LIMIT_CLIENT_TOKEN = new('rate-limit-client-token')
        SCROBBLING_SERVICE_PLEX_TV = new('scrobbling-service-plex-tv')
        SESSION_BANDWIDTH_RESTRICTIONS = new('session_bandwidth_restrictions')
        SESSION_KICK = new('session_kick')
        SHARED_SERVER_NOTIFICATION = new('shared_server_notification')
        SHARED_SOURCE_NOTIFICATION = new('shared_source_notification')
        SIGNIN_NOTIFICATION = new('signin_notification')
        SIGNIN_WITH_APPLE = new('signin_with_apple')
        SILENCE_REMOVAL = new('silence-removal')
        SLEEP_TIMER = new('sleep-timer')
        SPRING_SERVE_AD_PROVIDER = new('spring_serve_ad_provider')
        SYNC = new('sync')
        SWEET_FADES = new('sweet-fades')
        TRANSCODER_CACHE = new('transcoder_cache')
        TRAILERS = new('trailers')
        TUNER_SHARING = new('tuner-sharing')
        TWO_FACTOR_AUTHENTICATION = new('two-factor-authentication')
        UNSUPPORTEDTUNERS = new('unsupportedtuners')
        UPGRADE_3DS2 = new('upgrade-3ds2')
        VISUALIZERS = new('visualizers')
        VOD_SCHEMA = new('vod-schema')
        VOD_CLOUDFLARE = new('vod_cloudflare')
        VOLUME_LEVELING = new('volume-leveling')
        WATCH_TOGETHER_INVITE = new('watch-together-invite')
        WATCHLIST_RSS = new('watchlist-rss')
        WEB_SERVER_DASHBOARD = new('web_server_dashboard')
        WEBHOOKS = new('webhooks')
      end
    end
  end
end
