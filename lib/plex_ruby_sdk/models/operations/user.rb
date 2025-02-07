# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module PlexRubySDK
  module Operations
    USER_SERVERS = [
      'https://plex.tv/api'
    ].freeze
  

    class User < ::PlexRubySDK::Utils::FieldAugmented
      extend T::Sig


      field :allow_camera_upload, ::PlexRubySDK::Operations::AllowCameraUpload

      field :allow_channels, ::PlexRubySDK::Operations::AllowChannels

      field :allow_subtitle_admin, ::PlexRubySDK::Operations::AllowSubtitleAdmin

      field :allow_sync, ::PlexRubySDK::Operations::AllowSync

      field :allow_tuners, ::PlexRubySDK::Operations::AllowTuners
      # User's email address.
      field :email, ::String

      field :home, ::PlexRubySDK::Operations::Home
      # User's unique ID.
      field :id, ::Integer

      field :protected, ::PlexRubySDK::Operations::Protected

      field :restricted, ::PlexRubySDK::Operations::Restricted
      # List of servers owned by the user.
      field :server, T::Array[::PlexRubySDK::Operations::GetUsersServer]
      # URL to the user's avatar image.
      field :thumb, ::String
      # User's display name.
      field :title, ::String
      # User's username.
      field :username, ::String
      # Filters applied for all content.
      field :filter_all, T.nilable(::String)
      # Filters applied for movies.
      field :filter_movies, T.nilable(::String)
      # Filters applied for music.
      field :filter_music, T.nilable(::String)
      # Filters applied for photos.
      field :filter_photos, T.nilable(::String)
      # Filters applied for television.
      field :filter_television, T.nilable(::String)
      # ID of the user's recommendation playlist.
      field :recommendations_playlist_id, T.nilable(::String)


      sig { params(allow_camera_upload: ::PlexRubySDK::Operations::AllowCameraUpload, allow_channels: ::PlexRubySDK::Operations::AllowChannels, allow_subtitle_admin: ::PlexRubySDK::Operations::AllowSubtitleAdmin, allow_sync: ::PlexRubySDK::Operations::AllowSync, allow_tuners: ::PlexRubySDK::Operations::AllowTuners, email: ::String, home: ::PlexRubySDK::Operations::Home, id: ::Integer, protected: ::PlexRubySDK::Operations::Protected, restricted: ::PlexRubySDK::Operations::Restricted, server: T::Array[::PlexRubySDK::Operations::GetUsersServer], thumb: ::String, title: ::String, username: ::String, filter_all: T.nilable(::String), filter_movies: T.nilable(::String), filter_music: T.nilable(::String), filter_photos: T.nilable(::String), filter_television: T.nilable(::String), recommendations_playlist_id: T.nilable(::String)).void }
      def initialize(allow_camera_upload: nil, allow_channels: nil, allow_subtitle_admin: nil, allow_sync: nil, allow_tuners: nil, email: nil, home: nil, id: nil, protected: nil, restricted: nil, server: nil, thumb: nil, title: nil, username: nil, filter_all: nil, filter_movies: nil, filter_music: nil, filter_photos: nil, filter_television: nil, recommendations_playlist_id: nil)
        @allow_camera_upload = allow_camera_upload
        @allow_channels = allow_channels
        @allow_subtitle_admin = allow_subtitle_admin
        @allow_sync = allow_sync
        @allow_tuners = allow_tuners
        @email = email
        @home = home
        @id = id
        @protected = protected
        @restricted = restricted
        @server = server
        @thumb = thumb
        @title = title
        @username = username
        @filter_all = filter_all
        @filter_movies = filter_movies
        @filter_music = filter_music
        @filter_photos = filter_photos
        @filter_television = filter_television
        @recommendations_playlist_id = recommendations_playlist_id
      end
    end
  end
end
