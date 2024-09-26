# plexruby

<div align="left">
    <a href="https://speakeasyapi.dev/"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
    </a>
</div>

<!-- Start Summary [summary] -->
## Summary

Plex-API: An Open API Spec for interacting with Plex.tv and Plex Media Server
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents

* [SDK Installation](#sdk-installation)
* [SDK Example Usage](#sdk-example-usage)
* [Available Resources and Operations](#available-resources-and-operations)
* [Global Parameters](#global-parameters)
* [Server Selection](#server-selection)
<!-- End Table of Contents [toc] -->

<!-- Start SDK Installation [installation] -->
## SDK Installation

The SDK can be installed using [RubyGems](https://rubygems.org/):

```bash
gem install plex_ruby_sdk
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.server.get_server_capabilities()

if ! res.object.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [Activities](docs/sdks/activities/README.md)

* [get_server_activities](docs/sdks/activities/README.md#get_server_activities) - Get Server Activities
* [cancel_server_activities](docs/sdks/activities/README.md#cancel_server_activities) - Cancel Server Activities

### [Authentication](docs/sdks/authentication/README.md)

* [get_transient_token](docs/sdks/authentication/README.md#get_transient_token) - Get a Transient Token
* [get_source_connection_information](docs/sdks/authentication/README.md#get_source_connection_information) - Get Source Connection Information
* [get_token_details](docs/sdks/authentication/README.md#get_token_details) - Get Token Details
* [post_users_sign_in_data](docs/sdks/authentication/README.md#post_users_sign_in_data) - Get User Sign In Data

### [Butler](docs/sdks/butler/README.md)

* [get_butler_tasks](docs/sdks/butler/README.md#get_butler_tasks) - Get Butler tasks
* [start_all_tasks](docs/sdks/butler/README.md#start_all_tasks) - Start all Butler tasks
* [stop_all_tasks](docs/sdks/butler/README.md#stop_all_tasks) - Stop all Butler tasks
* [start_task](docs/sdks/butler/README.md#start_task) - Start a single Butler task
* [stop_task](docs/sdks/butler/README.md#stop_task) - Stop a single Butler task

### [Hubs](docs/sdks/hubs/README.md)

* [get_global_hubs](docs/sdks/hubs/README.md#get_global_hubs) - Get Global Hubs
* [get_recently_added](docs/sdks/hubs/README.md#get_recently_added) - Get Recently Added
* [get_library_hubs](docs/sdks/hubs/README.md#get_library_hubs) - Get library specific hubs

### [Library](docs/sdks/library/README.md)

* [get_file_hash](docs/sdks/library/README.md#get_file_hash) - Get Hash Value
* [get_recently_added_library](docs/sdks/library/README.md#get_recently_added_library) - Get Recently Added
* [get_all_libraries](docs/sdks/library/README.md#get_all_libraries) - Get All Libraries
* [get_library_details](docs/sdks/library/README.md#get_library_details) - Get Library Details
* [delete_library](docs/sdks/library/README.md#delete_library) - Delete Library Section
* [get_library_items](docs/sdks/library/README.md#get_library_items) - Get Library Items
* [get_refresh_library_metadata](docs/sdks/library/README.md#get_refresh_library_metadata) - Refresh Metadata Of The Library
* [get_search_library](docs/sdks/library/README.md#get_search_library) - Search Library
* [get_meta_data_by_rating_key](docs/sdks/library/README.md#get_meta_data_by_rating_key) - Get Metadata by RatingKey
* [get_metadata_children](docs/sdks/library/README.md#get_metadata_children) - Get Items Children
* [get_top_watched_content](docs/sdks/library/README.md#get_top_watched_content) - Get Top Watched Content
* [get_on_deck](docs/sdks/library/README.md#get_on_deck) - Get On Deck

### [Log](docs/sdks/log/README.md)

* [log_line](docs/sdks/log/README.md#log_line) - Logging a single line message.
* [log_multi_line](docs/sdks/log/README.md#log_multi_line) - Logging a multi-line message
* [enable_paper_trail](docs/sdks/log/README.md#enable_paper_trail) - Enabling Papertrail

### [Media](docs/sdks/media/README.md)

* [mark_played](docs/sdks/media/README.md#mark_played) - Mark Media Played
* [mark_unplayed](docs/sdks/media/README.md#mark_unplayed) - Mark Media Unplayed
* [update_play_progress](docs/sdks/media/README.md#update_play_progress) - Update Media Play Progress
* [get_banner_image](docs/sdks/media/README.md#get_banner_image) - Get Banner Image
* [get_thumb_image](docs/sdks/media/README.md#get_thumb_image) - Get Thumb Image

### [Playlists](docs/sdks/playlists/README.md)

* [create_playlist](docs/sdks/playlists/README.md#create_playlist) - Create a Playlist
* [get_playlists](docs/sdks/playlists/README.md#get_playlists) - Get All Playlists
* [get_playlist](docs/sdks/playlists/README.md#get_playlist) - Retrieve Playlist
* [delete_playlist](docs/sdks/playlists/README.md#delete_playlist) - Deletes a Playlist
* [update_playlist](docs/sdks/playlists/README.md#update_playlist) - Update a Playlist
* [get_playlist_contents](docs/sdks/playlists/README.md#get_playlist_contents) - Retrieve Playlist Contents
* [clear_playlist_contents](docs/sdks/playlists/README.md#clear_playlist_contents) - Delete Playlist Contents
* [add_playlist_contents](docs/sdks/playlists/README.md#add_playlist_contents) - Adding to a Playlist
* [upload_playlist](docs/sdks/playlists/README.md#upload_playlist) - Upload Playlist

### [Plex](docs/sdks/plex/README.md)

* [get_companions_data](docs/sdks/plex/README.md#get_companions_data) - Get Companions Data
* [get_user_friends](docs/sdks/plex/README.md#get_user_friends) - Get list of friends of the user logged in
* [get_geo_data](docs/sdks/plex/README.md#get_geo_data) - Get Geo Data
* [get_home_data](docs/sdks/plex/README.md#get_home_data) - Get Plex Home Data
* [get_server_resources](docs/sdks/plex/README.md#get_server_resources) - Get Server Resources
* [get_pin](docs/sdks/plex/README.md#get_pin) - Get a Pin
* [get_token_by_pin_id](docs/sdks/plex/README.md#get_token_by_pin_id) - Get Access Token by PinId


### [Search](docs/sdks/search/README.md)

* [perform_search](docs/sdks/search/README.md#perform_search) - Perform a search
* [perform_voice_search](docs/sdks/search/README.md#perform_voice_search) - Perform a voice search
* [get_search_results](docs/sdks/search/README.md#get_search_results) - Get Search Results

### [Server](docs/sdks/server/README.md)

* [get_server_capabilities](docs/sdks/server/README.md#get_server_capabilities) - Get Server Capabilities
* [get_server_preferences](docs/sdks/server/README.md#get_server_preferences) - Get Server Preferences
* [get_available_clients](docs/sdks/server/README.md#get_available_clients) - Get Available Clients
* [get_devices](docs/sdks/server/README.md#get_devices) - Get Devices
* [get_server_identity](docs/sdks/server/README.md#get_server_identity) - Get Server Identity
* [get_my_plex_account](docs/sdks/server/README.md#get_my_plex_account) - Get MyPlex Account
* [get_resized_photo](docs/sdks/server/README.md#get_resized_photo) - Get a Resized Photo
* [get_media_providers](docs/sdks/server/README.md#get_media_providers) - Get Media Providers
* [get_server_list](docs/sdks/server/README.md#get_server_list) - Get Server List

### [Sessions](docs/sdks/sessions/README.md)

* [get_sessions](docs/sdks/sessions/README.md#get_sessions) - Get Active Sessions
* [get_session_history](docs/sdks/sessions/README.md#get_session_history) - Get Session History
* [get_transcode_sessions](docs/sdks/sessions/README.md#get_transcode_sessions) - Get Transcode Sessions
* [stop_transcode_session](docs/sdks/sessions/README.md#stop_transcode_session) - Stop a Transcode Session

### [Statistics](docs/sdks/statistics/README.md)

* [get_statistics](docs/sdks/statistics/README.md#get_statistics) - Get Media Statistics
* [get_resources_statistics](docs/sdks/statistics/README.md#get_resources_statistics) - Get Resources Statistics
* [get_bandwidth_statistics](docs/sdks/statistics/README.md#get_bandwidth_statistics) - Get Bandwidth Statistics

### [Updater](docs/sdks/updater/README.md)

* [get_update_status](docs/sdks/updater/README.md#get_update_status) - Querying status of updates
* [check_for_updates](docs/sdks/updater/README.md#check_for_updates) - Checking for updates
* [apply_updates](docs/sdks/updater/README.md#apply_updates) - Apply Updates

### [Video](docs/sdks/video/README.md)

* [get_timeline](docs/sdks/video/README.md#get_timeline) - Get the timeline for a media item
* [start_universal_transcode](docs/sdks/video/README.md#start_universal_transcode) - Start Universal Transcode

### [Watchlist](docs/sdks/watchlist/README.md)

* [get_watch_list](docs/sdks/watchlist/README.md#get_watch_list) - Get User Watchlist

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Server Selection [server] -->
## Server Selection

## Server Selection

### Select Server by Index

You can override the default server globally by passing a server index to the `server_idx: int` optional parameter when initializing the SDK client instance. The selected server will then be used as the default on the operations that use it. This table lists the indexes associated with the available servers:

| # | Server | Variables |
| - | ------ | --------- |
| 0 | `{protocol}://{ip}:{port}` | `protocol` (default is `https`), `ip` (default is `10.10.10.47`), `port` (default is `32400`) |



#### Variables

Some of the server options above contain variables. If you want to set the values of those variables, the following optional parameters are available when initializing the SDK client instance:
 * `protocol: ::PlexRubySDK::ServerVariables::ServerProtocol`
 * `ip: ::String`
 * `port: ::String`

### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url: str` optional parameter when initializing the SDK client instance. For example:


### Override Server URL Per-Operation

The server URL can also be overridden on a per-operation basis, provided a server list was specified for the operation. For example:
```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.plex.get_companions_data(server_url: "https://plex.tv/api/v2/")

if ! res.response_bodies.nil?
  # handle response
end

```
<!-- End Server Selection [server] -->

<!-- Start Global Parameters [global-parameters] -->
## Global Parameters

Certain parameters are configured globally. These parameters may be set on the SDK client instance itself during initialization. When configured as an option during SDK initialization, These global values will be used as defaults on the operations that use them. When such operations are called, there is a place in each to override the global value, if needed.

For example, you can set `ClientID` to `"gcgzw5rz2xovp84b4vha3a40"` at SDK initialization and then you do not have to pass the same value on calls to operations like `get_pin`. But if you want to do so you may, which will locally override the global setting. See the example code below for a demonstration.


### Available Globals

The following global parameters are available.

| Name | Type | Required | Description |
| ---- | ---- |:--------:| ----------- |
| client_id | ::String |  | The unique identifier for the client application
This is used to track the client application and its usage
(UUID, serial number, or other number unique per device)
 |
| client_name | ::String |  | The client_name parameter. |
| client_version | ::String |  | The client_version parameter. |
| client_platform | ::String |  | The client_platform parameter. |
| device_name | ::String |  | The device_name parameter. |


### Example

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )


req = ::PlexRubySDK::Operations::GetPinRequest.new()
    
res = s.plex.get_pin(req)

if ! res.auth_pin_container.nil?
  # handle response
end

```
<!-- End Global Parameters [global-parameters] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically.
Feel free to open a PR or a Github issue as a proof of concept and we'll do our best to include it in a future release!

### SDK Created by [Speakeasy](https://docs.speakeasyapi.dev/docs/using-speakeasy/client-sdks)
