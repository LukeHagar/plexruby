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
        AMAZON_LOOP_DEBUG = new('amazon-loop-debug')
        AVOD_AD_ANALYSIS = new('avod-ad-analysis')
        AVOD_NEW_MEDIA = new('avod-new-media')
        BLACKLIST_GET_SIGNIN = new('blacklist_get_signin')
        CLIENT_RADIO_STATIONS = new('client-radio-stations')
        CLOUDFLARE_TURNSTILE_REQUIRED = new('cloudflare-turnstile-required')
        COLLECTIONS = new('collections')
        COMMENTS_AND_REPLIES_PUSH_NOTIFICATIONS = new('comments_and_replies_push_notifications')
        COMMUNITY_ACCESS_PLEX_TV = new('community_access_plex_tv')
        COMPANIONS_SONOS = new('companions_sonos')
        CUSTOM_HOME_REMOVAL = new('custom-home-removal')
        DISABLE_HOME_USER_FRIENDSHIPS = new('disable_home_user_friendships')
        DISABLE_SHARING_FRIENDSHIPS = new('disable_sharing_friendships')
        DRM_SUPPORT = new('drm_support')
        EXCLUDE_RESTRICTIONS = new('exclude restrictions')
        FEDERATED_AUTH = new('federated-auth')
        FRIEND_REQUEST_PUSH_NOTIFICATIONS = new('friend_request_push_notifications')
        GUIDED_UPGRADE = new('guided-upgrade')
        HOME = new('home')
        INCREASE_PASSWORD_COMPLEXITY = new('increase-password-complexity')
        IOS14_PRIVACY_BANNER = new('ios14-privacy-banner')
        ITERABLE_NOTIFICATION_TOKENS = new('iterable-notification-tokens')
        KEEP_PAYMENT_METHOD = new('keep-payment-method')
        KEVIN_BACON = new('kevin-bacon')
        KOREA_CONSENT = new('korea-consent')
        LE_ISRG_ROOT_X1 = new('le_isrg_root_x1')
        LETS_ENCRYPT = new('lets_encrypt')
        LIGHTNING_DVR_PIVOT = new('lightning-dvr-pivot')
        LIVE_TV_SUPPORT_INCOMPLETE_SEGMENTS = new('live-tv-support-incomplete-segments')
        LIVETV = new('livetv')
        METADATA_SEARCH = new('metadata_search')
        NEW_PLEX_PASS_PRICES = new('new_plex_pass_prices')
        NEWS_PROVIDER_SUNSET_MODAL = new('news-provider-sunset-modal')
        PHOTOS_FAVORITES = new('photos-favorites')
        PHOTOS_METADATA_EDITION = new('photos-metadata-edition')
        PMS_HEALTH = new('pms_health')
        RADIO = new('radio')
        RATE_LIMIT_CLIENT_TOKEN = new('rate-limit-client-token')
        SCROBBLING_SERVICE_PLEX_TV = new('scrobbling-service-plex-tv')
        SHARED_SERVER_NOTIFICATION = new('shared_server_notification')
        SHARED_SOURCE_NOTIFICATION = new('shared_source_notification')
        SIGNIN_WITH_APPLE = new('signin_with_apple')
        SPRING_SERVE_AD_PROVIDER = new('spring_serve_ad_provider')
        TRANSCODER_CACHE = new('transcoder_cache')
        TUNER_SHARING = new('tuner-sharing')
        TWO_FACTOR_AUTHENTICATION = new('two-factor-authentication')
        UNSUPPORTEDTUNERS = new('unsupportedtuners')
        UPGRADE_3DS2 = new('upgrade-3ds2')
        VOD_SCHEMA = new('vod-schema')
        VOD_CLOUDFLARE = new('vod_cloudflare')
        WATCH_TOGETHER_INVITE = new('watch-together-invite')
        WEB_SERVER_DASHBOARD = new('web_server_dashboard')
      end
    end
  end
end
