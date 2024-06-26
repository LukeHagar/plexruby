# plexruby

<div align="left">
    <a href="https://speakeasyapi.dev/"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
    </a>
</div>

<!-- Start SDK Installation [installation] -->
## SDK Installation

```bash
gem install specific_install
gem specific_install https://github.com/LukeHagar/plexruby 
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new(
      x_plex_client_identifier: "Postman",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.server.get_server_capabilities()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

### [Server](docs/sdks/server/README.md)

* [get_server_capabilities](docs/sdks/server/README.md#get_server_capabilities) - Get Server Capabilities
* [get_server_preferences](docs/sdks/server/README.md#get_server_preferences) - Get Server Preferences
* [get_available_clients](docs/sdks/server/README.md#get_available_clients) - Get Available Clients
* [get_devices](docs/sdks/server/README.md#get_devices) - Get Devices
* [get_server_identity](docs/sdks/server/README.md#get_server_identity) - Get Server Identity
* [get_my_plex_account](docs/sdks/server/README.md#get_my_plex_account) - Get MyPlex Account
* [get_resized_photo](docs/sdks/server/README.md#get_resized_photo) - Get a Resized Photo
* [get_server_list](docs/sdks/server/README.md#get_server_list) - Get Server List

### [Media](docs/sdks/media/README.md)

* [mark_played](docs/sdks/media/README.md#mark_played) - Mark Media Played
* [mark_unplayed](docs/sdks/media/README.md#mark_unplayed) - Mark Media Unplayed
* [update_play_progress](docs/sdks/media/README.md#update_play_progress) - Update Media Play Progress

### [Video](docs/sdks/video/README.md)

* [get_timeline](docs/sdks/video/README.md#get_timeline) - Get the timeline for a media item
* [start_universal_transcode](docs/sdks/video/README.md#start_universal_transcode) - Start Universal Transcode

### [Activities](docs/sdks/activities/README.md)

* [get_server_activities](docs/sdks/activities/README.md#get_server_activities) - Get Server Activities
* [cancel_server_activities](docs/sdks/activities/README.md#cancel_server_activities) - Cancel Server Activities

### [Butler](docs/sdks/butler/README.md)

* [get_butler_tasks](docs/sdks/butler/README.md#get_butler_tasks) - Get Butler tasks
* [start_all_tasks](docs/sdks/butler/README.md#start_all_tasks) - Start all Butler tasks
* [stop_all_tasks](docs/sdks/butler/README.md#stop_all_tasks) - Stop all Butler tasks
* [start_task](docs/sdks/butler/README.md#start_task) - Start a single Butler task
* [stop_task](docs/sdks/butler/README.md#stop_task) - Stop a single Butler task

### [Plex](docs/sdks/plex/README.md)

* [get_home_data](docs/sdks/plex/README.md#get_home_data) - Get Plex Home Data
* [get_pin](docs/sdks/plex/README.md#get_pin) - Get a Pin
* [get_token](docs/sdks/plex/README.md#get_token) - Get Access Token

### [Hubs](docs/sdks/hubs/README.md)

* [get_global_hubs](docs/sdks/hubs/README.md#get_global_hubs) - Get Global Hubs
* [get_library_hubs](docs/sdks/hubs/README.md#get_library_hubs) - Get library specific hubs

### [Search](docs/sdks/search/README.md)

* [perform_search](docs/sdks/search/README.md#perform_search) - Perform a search
* [perform_voice_search](docs/sdks/search/README.md#perform_voice_search) - Perform a voice search
* [get_search_results](docs/sdks/search/README.md#get_search_results) - Get Search Results

### [Library](docs/sdks/library/README.md)

* [get_file_hash](docs/sdks/library/README.md#get_file_hash) - Get Hash Value
* [get_recently_added](docs/sdks/library/README.md#get_recently_added) - Get Recently Added
* [get_libraries](docs/sdks/library/README.md#get_libraries) - Get All Libraries
* [get_library](docs/sdks/library/README.md#get_library) - Get Library Details
* [delete_library](docs/sdks/library/README.md#delete_library) - Delete Library Section
* [get_library_items](docs/sdks/library/README.md#get_library_items) - Get Library Items
* [refresh_library](docs/sdks/library/README.md#refresh_library) - Refresh Library
* [search_library](docs/sdks/library/README.md#search_library) - Search Library
* [get_metadata](docs/sdks/library/README.md#get_metadata) - Get Items Metadata
* [get_metadata_children](docs/sdks/library/README.md#get_metadata_children) - Get Items Children
* [get_top_watched_content](docs/sdks/library/README.md#get_top_watched_content) - Get Top Watched Content
* [get_on_deck](docs/sdks/library/README.md#get_on_deck) - Get On Deck

### [Log](docs/sdks/log/README.md)

* [log_line](docs/sdks/log/README.md#log_line) - Logging a single line message.
* [log_multi_line](docs/sdks/log/README.md#log_multi_line) - Logging a multi-line message
* [enable_paper_trail](docs/sdks/log/README.md#enable_paper_trail) - Enabling Papertrail

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

### [Authentication](docs/sdks/authentication/README.md)

* [get_transient_token](docs/sdks/authentication/README.md#get_transient_token) - Get a Transient Token.
* [get_source_connection_information](docs/sdks/authentication/README.md#get_source_connection_information) - Get Source Connection Information

### [Statistics](docs/sdks/statistics/README.md)

* [get_statistics](docs/sdks/statistics/README.md#get_statistics) - Get Media Statistics
* [get_resources_statistics](docs/sdks/statistics/README.md#get_resources_statistics) - Get Resources Statistics
* [get_bandwidth_statistics](docs/sdks/statistics/README.md#get_bandwidth_statistics) - Get Bandwidth Statistics

### [Sessions](docs/sdks/sessions/README.md)

* [get_sessions](docs/sdks/sessions/README.md#get_sessions) - Get Active Sessions
* [get_session_history](docs/sdks/sessions/README.md#get_session_history) - Get Session History
* [get_transcode_sessions](docs/sdks/sessions/README.md#get_transcode_sessions) - Get Transcode Sessions
* [stop_transcode_session](docs/sdks/sessions/README.md#stop_transcode_session) - Stop a Transcode Session

### [Updater](docs/sdks/updater/README.md)

* [get_update_status](docs/sdks/updater/README.md#get_update_status) - Querying status of updates
* [check_for_updates](docs/sdks/updater/README.md#check_for_updates) - Checking for updates
* [apply_updates](docs/sdks/updater/README.md#apply_updates) - Apply Updates

### [Watchlist](docs/sdks/watchlist/README.md)

* [get_watchlist](docs/sdks/watchlist/README.md#get_watchlist) - Get User Watchlist
<!-- End Available Resources and Operations [operations] -->

<!-- Start Server Selection [server] -->
## Server Selection

## Server Selection

### Select Server by Index

You can override the default server globally by passing a server index to the `server_idx: int` optional parameter when initializing the SDK client instance. The selected server will then be used as the default on the operations that use it. This table lists the indexes associated with the available servers:

| # | Server | Variables |
| - | ------ | --------- |
| 0 | `{protocol}://{ip}:{port}` | `protocol` (default is `http`), `ip` (default is `10.10.10.47`), `port` (default is `32400`) |



#### Variables

Some of the server options above contain variables. If you want to set the values of those variables, the following optional parameters are available when initializing the SDK client instance:
 * `protocol: ::OpenApiSDK::ServerVariables::ServerProtocol`
 * `ip: ::String`
 * `port: ::String`

### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url: str` optional parameter when initializing the SDK client instance. For example:


### Override Server URL Per-Operation

The server URL can also be overridden on a per-operation basis, provided a server list was specified for the operation. For example:
```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new(
      x_plex_client_identifier: "Postman",
    )

    
res = s.plex.get_pin(server_url: "https://plex.tv/api/v2", x_plex_product="Postman", strong=false, x_plex_client_identifier="Postman")

if ! res.two_hundred_and_one_application_json_object.nil?
  # handle response
end

```
<!-- End Server Selection [server] -->

<!-- Start Global Parameters [global-parameters] -->
## Global Parameters

A parameter is configured globally. This parameter may be set on the SDK client instance itself during initialization. When configured as an option during SDK initialization, This global value will be used as the default on the operations that use it. When such operations are called, there is a place in each to override the global value, if needed.

For example, you can set `X-Plex-Client-Identifier` to `"Postman"` at SDK initialization and then you do not have to pass the same value on calls to operations like `get_pin`. But if you want to do so you may, which will locally override the global setting. See the example code below for a demonstration.


### Available Globals

The following global parameter is available.

| Name | Type | Required | Description |
| ---- | ---- |:--------:| ----------- |
| x_plex_client_identifier | ::String |  | The unique identifier for the client application
This is used to track the client application and its usage
(UUID, serial number, or other number unique per device)
 |


### Example

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new(
      x_plex_client_identifier: "Postman",
    )

    
res = s.plex.get_pin(x_plex_product="Postman", strong=false, x_plex_client_identifier="Postman")

if ! res.two_hundred_and_one_application_json_object.nil?
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
