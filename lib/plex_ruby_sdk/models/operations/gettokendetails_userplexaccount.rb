# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    GET_TOKEN_DETAILS_USER_PLEX_ACCOUNT_SERVERS = [
      'https://plex.tv/api/v2'
    ].freeze
  
    # Logged in user details
    class GetTokenDetailsUserPlexAccount < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig

      # Unknown
      field :ads_consent, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('adsConsent') } }
      # Unknown
      field :ads_consent_reminder_at, ::DateTime, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('adsConsentReminderAt'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # Unknown
      field :ads_consent_set_at, ::DateTime, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('adsConsentSetAt'), 'decoder': Utils.datetime_from_iso_format(false) } }
      # Unknown
      field :anonymous, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('anonymous') } }

      field :attribution_partner, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('attributionPartner') } }
      # The account token
      field :auth_token, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('authToken') } }
      # If the two-factor authentication backup codes have been created
      field :backup_codes_created, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('backupCodesCreated') } }
      # If the account has been confirmed
      field :confirmed, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('confirmed') } }
      # The account country
      field :country, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('country') } }
      # The account email address
      field :email, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('email') } }
      # If login with email only is enabled
      field :email_only_auth, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('emailOnlyAuth') } }
      # List of devices your allowed to use with this account
      field :entitlements, T::Array[::String], { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('entitlements') } }
      # If experimental features are enabled
      field :experimental_features, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('experimentalFeatures') } }
      # Your account full name
      field :friendly_name, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('friendlyName') } }
      # If the account is a Plex Home guest user
      field :guest, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('guest') } }
      # If the account has a password
      field :has_password, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('hasPassword') } }
      # If the account is a Plex Home user
      field :home, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('home') } }
      # If the account is the Plex Home admin
      field :home_admin, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('homeAdmin') } }
      # The number of accounts in the Plex Home
      field :home_size, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('homeSize') } }
      # The Plex account ID
      field :id, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('id') } }
      # Unix epoch datetime in seconds
      field :joined_at, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('joinedAt') } }
      # The account locale
      field :locale, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('locale') } }
      # If you are subscribed to the Plex newsletter
      field :mailing_list_active, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mailingListActive') } }
      # Your current mailing list status (active or unsubscribed)
      field :mailing_list_status, ::PlexRubySDK::Operations::MailingListStatus, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('mailingListStatus'), 'decoder': Utils.enum_from_string(::PlexRubySDK::Operations::MailingListStatus, false) } }
      # The maximum number of accounts allowed in the Plex Home
      field :max_home_size, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('maxHomeSize') } }

      field :profile, ::PlexRubySDK::Operations::UserProfile, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('profile') } }
      # If the account has a Plex Home PIN enabled
      field :protected, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('protected') } }
      # Unix epoch datetime in seconds
      field :remember_expires_at, ::Integer, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('rememberExpiresAt') } }
      # If the account is a Plex Home managed user
      field :restricted, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('restricted') } }
      # Unknown
      field :scrobble_types, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('scrobbleTypes') } }

      field :services, T::Array[::PlexRubySDK::Operations::Services], { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('services') } }
      # If the account’s Plex Pass subscription is active
      field :subscription, ::PlexRubySDK::Operations::Subscription, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('subscription') } }
      # Description of the Plex Pass subscription
      field :subscription_description, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('subscriptionDescription') } }

      field :subscriptions, T::Array[::PlexRubySDK::Operations::GetTokenDetailsSubscription], { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('subscriptions') } }
      # URL of the account thumbnail
      field :thumb, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('thumb') } }
      # The title of the account (username or friendly name)
      field :title, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('title') } }
      # If two-factor authentication is enabled
      field :two_factor_enabled, T::Boolean, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('twoFactorEnabled') } }
      # The account username
      field :username, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('username') } }
      # The account UUID
      field :uuid, ::String, { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('uuid') } }
      # [Might be removed] The hashed Plex Home PIN 
      # 
      # @deprecated  true: This will be removed in a future release, please migrate away from it as soon as possible.
      field :pin, T.nilable(::String), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('pin') } }
      # [Might be removed] List of account roles. Plexpass membership listed here
      field :roles, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::PlexRubySDK::Utils.field_name('roles') } }


      sig { params(ads_consent: T::Boolean, ads_consent_reminder_at: ::DateTime, ads_consent_set_at: ::DateTime, anonymous: T::Boolean, attribution_partner: ::String, auth_token: ::String, backup_codes_created: T::Boolean, confirmed: T::Boolean, country: ::String, email: ::String, email_only_auth: T::Boolean, entitlements: T::Array[::String], experimental_features: T::Boolean, friendly_name: ::String, guest: T::Boolean, has_password: T::Boolean, home: T::Boolean, home_admin: T::Boolean, home_size: ::Integer, id: ::Integer, joined_at: ::Integer, locale: ::String, mailing_list_active: T::Boolean, mailing_list_status: ::PlexRubySDK::Operations::MailingListStatus, max_home_size: ::Integer, profile: ::PlexRubySDK::Operations::UserProfile, protected: T::Boolean, remember_expires_at: ::Integer, restricted: T::Boolean, scrobble_types: ::String, services: T::Array[::PlexRubySDK::Operations::Services], subscription: ::PlexRubySDK::Operations::Subscription, subscription_description: ::String, subscriptions: T::Array[::PlexRubySDK::Operations::GetTokenDetailsSubscription], thumb: ::String, title: ::String, two_factor_enabled: T::Boolean, username: ::String, uuid: ::String, pin: T.nilable(::String), roles: T.nilable(T::Array[::String])).void }
      def initialize(ads_consent: nil, ads_consent_reminder_at: nil, ads_consent_set_at: nil, anonymous: nil, attribution_partner: nil, auth_token: nil, backup_codes_created: nil, confirmed: nil, country: nil, email: nil, email_only_auth: nil, entitlements: nil, experimental_features: nil, friendly_name: nil, guest: nil, has_password: nil, home: nil, home_admin: nil, home_size: nil, id: nil, joined_at: nil, locale: nil, mailing_list_active: nil, mailing_list_status: nil, max_home_size: nil, profile: nil, protected: nil, remember_expires_at: nil, restricted: nil, scrobble_types: nil, services: nil, subscription: nil, subscription_description: nil, subscriptions: nil, thumb: nil, title: nil, two_factor_enabled: nil, username: nil, uuid: nil, pin: nil, roles: nil)
        @ads_consent = ads_consent
        @ads_consent_reminder_at = ads_consent_reminder_at
        @ads_consent_set_at = ads_consent_set_at
        @anonymous = anonymous
        @attribution_partner = attribution_partner
        @auth_token = auth_token
        @backup_codes_created = backup_codes_created
        @confirmed = confirmed
        @country = country
        @email = email
        @email_only_auth = email_only_auth
        @entitlements = entitlements
        @experimental_features = experimental_features
        @friendly_name = friendly_name
        @guest = guest
        @has_password = has_password
        @home = home
        @home_admin = home_admin
        @home_size = home_size
        @id = id
        @joined_at = joined_at
        @locale = locale
        @mailing_list_active = mailing_list_active
        @mailing_list_status = mailing_list_status
        @max_home_size = max_home_size
        @profile = profile
        @protected = protected
        @remember_expires_at = remember_expires_at
        @restricted = restricted
        @scrobble_types = scrobble_types
        @services = services
        @subscription = subscription
        @subscription_description = subscription_description
        @subscriptions = subscriptions
        @thumb = thumb
        @title = title
        @two_factor_enabled = two_factor_enabled
        @username = username
        @uuid = uuid
        @pin = pin
        @roles = roles
      end
    end
  end
end
