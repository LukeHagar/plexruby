# Playlists

## Overview

Playlists are ordered collections of media. They can be dumb (just a list of media) or smart (based on a media query, such as "all albums from 2017"). 
They can be organized in (optionally nesting) folders.
Retrieving a playlist, or its items, will trigger a refresh of its metadata. 
This may cause the duration and number of items to change.


### Available Operations

* [create_playlist](#create_playlist) - Create a Playlist
* [get_playlists](#get_playlists) - Get All Playlists
* [get_playlist](#get_playlist) - Retrieve Playlist
* [delete_playlist](#delete_playlist) - Deletes a Playlist
* [update_playlist](#update_playlist) - Update a Playlist
* [get_playlist_contents](#get_playlist_contents) - Retrieve Playlist Contents
* [clear_playlist_contents](#clear_playlist_contents) - Delete Playlist Contents
* [add_playlist_contents](#add_playlist_contents) - Adding to a Playlist
* [upload_playlist](#upload_playlist) - Upload Playlist

## create_playlist

Create a new playlist. By default the playlist is blank. To create a playlist along with a first item, pass:
- `uri` - The content URI for what we're playing (e.g. `server://1234/com.plexapp.plugins.library/library/metadata/1`).
- `playQueueID` - To create a playlist from an existing play queue.


### Example Usage

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


req = ::PlexRubySDK::Operations::CreatePlaylistRequest.new(
  title: "<value>",
  type: ::PlexRubySDK::Operations::CreatePlaylistQueryParamType::PHOTO,
  smart: ::PlexRubySDK::Operations::Smart::ONE,
  uri: "https://hoarse-testing.info/",
)
    
res = s.playlists.create_playlist(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                            | Type                                                                                                 | Required                                                                                             | Description                                                                                          |
| ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| `request`                                                                                            | [::PlexRubySDK::Operations::CreatePlaylistRequest](../../models/operations/createplaylistrequest.md) | :heavy_check_mark:                                                                                   | The request object to use for the request.                                                           |

### Response

**[T.nilable(::PlexRubySDK::Operations::CreatePlaylistResponse)](../../models/operations/createplaylistresponse.md)**




## get_playlists

Get All Playlists given the specified filters.

### Example Usage

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

    
res = s.playlists.get_playlists(playlist_type=::PlexRubySDK::Operations::PlaylistType::AUDIO, smart=::PlexRubySDK::Operations::QueryParamSmart::ZERO)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `playlist_type`                                                                          | [::PlexRubySDK::Operations::PlaylistType](../../models/operations/playlisttype.md)       | :heavy_minus_sign:                                                                       | limit to a type of playlist.                                                             |
| `smart`                                                                                  | [::PlexRubySDK::Operations::QueryParamSmart](../../models/operations/queryparamsmart.md) | :heavy_minus_sign:                                                                       | type of playlists to return (default is all).                                            |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetPlaylistsResponse)](../../models/operations/getplaylistsresponse.md)**




## get_playlist

Gets detailed metadata for a playlist. A playlist for many purposes (rating, editing metadata, tagging), can be treated like a regular metadata item:
Smart playlist details contain the `content` attribute. This is the content URI for the generator. This can then be parsed by a client to provide smart playlist editing.


### Example Usage

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

    
res = s.playlists.get_playlist(playlist_id=4109.48)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `playlist_id`          | *::Float*              | :heavy_check_mark:     | the ID of the playlist |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetPlaylistResponse)](../../models/operations/getplaylistresponse.md)**




## delete_playlist

This endpoint will delete a playlist


### Example Usage

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

    
res = s.playlists.delete_playlist(playlist_id=216.22)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `playlist_id`          | *::Float*              | :heavy_check_mark:     | the ID of the playlist |

### Response

**[T.nilable(::PlexRubySDK::Operations::DeletePlaylistResponse)](../../models/operations/deleteplaylistresponse.md)**




## update_playlist

From PMS version 1.9.1 clients can also edit playlist metadata using this endpoint as they would via `PUT /library/metadata/{playlistID}`


### Example Usage

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

    
res = s.playlists.update_playlist(playlist_id=3915.00, title="<value>", summary="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `playlist_id`                       | *::Float*                           | :heavy_check_mark:                  | the ID of the playlist              |
| `title`                             | *::String*                          | :heavy_minus_sign:                  | name of the playlist                |
| `summary`                           | *::String*                          | :heavy_minus_sign:                  | summary description of the playlist |

### Response

**[T.nilable(::PlexRubySDK::Operations::UpdatePlaylistResponse)](../../models/operations/updateplaylistresponse.md)**




## get_playlist_contents

Gets the contents of a playlist. Should be paged by clients via standard mechanisms. 
By default leaves are returned (e.g. episodes, movies). In order to return other types you can use the `type` parameter. 
For example, you could use this to display a list of recently added albums vis a smart playlist. 
Note that for dumb playlists, items have a `playlistItemID` attribute which is used for deleting or moving items.


### Example Usage

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

    
res = s.playlists.get_playlist_contents(playlist_id=5004.46, type=::PlexRubySDK::Operations::GetPlaylistContentsQueryParamType::TV_SHOW)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                       | Type                                                                                                                                                                            | Required                                                                                                                                                                        | Description                                                                                                                                                                     | Example                                                                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `playlist_id`                                                                                                                                                                   | *::Float*                                                                                                                                                                       | :heavy_check_mark:                                                                                                                                                              | the ID of the playlist                                                                                                                                                          |                                                                                                                                                                                 |
| `type`                                                                                                                                                                          | [::PlexRubySDK::Operations::GetPlaylistContentsQueryParamType](../../models/operations/getplaylistcontentsqueryparamtype.md)                                                    | :heavy_check_mark:                                                                                                                                                              | The type of media to retrieve.<br/>1 = movie<br/>2 = show<br/>3 = season<br/>4 = episode<br/>E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries<br/> | 2                                                                                                                                                                               |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetPlaylistContentsResponse)](../../models/operations/getplaylistcontentsresponse.md)**




## clear_playlist_contents

Clears a playlist, only works with dumb playlists. Returns the playlist.


### Example Usage

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

    
res = s.playlists.clear_playlist_contents(playlist_id=1893.18)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `playlist_id`          | *::Float*              | :heavy_check_mark:     | the ID of the playlist |

### Response

**[T.nilable(::PlexRubySDK::Operations::ClearPlaylistContentsResponse)](../../models/operations/clearplaylistcontentsresponse.md)**




## add_playlist_contents

Adds a generator to a playlist, same parameters as the POST to create. With a dumb playlist, this adds the specified items to the playlist.
With a smart playlist, passing a new `uri` parameter replaces the rules for the playlist. Returns the playlist.


### Example Usage

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

    
res = s.playlists.add_playlist_contents(playlist_id=8502.00, uri="server://12345/com.plexapp.plugins.library/library/metadata/1", play_queue_id=123.0)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                     | Type                                                          | Required                                                      | Description                                                   | Example                                                       |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `playlist_id`                                                 | *::Float*                                                     | :heavy_check_mark:                                            | the ID of the playlist                                        |                                                               |
| `uri`                                                         | *::String*                                                    | :heavy_check_mark:                                            | the content URI for the playlist                              | server://12345/com.plexapp.plugins.library/library/metadata/1 |
| `play_queue_id`                                               | *::Float*                                                     | :heavy_minus_sign:                                            | the play queue to add to a playlist                           | 123                                                           |

### Response

**[T.nilable(::PlexRubySDK::Operations::AddPlaylistContentsResponse)](../../models/operations/addplaylistcontentsresponse.md)**




## upload_playlist

Imports m3u playlists by passing a path on the server to scan for m3u-formatted playlist files, or a path to a single playlist file.


### Example Usage

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

    
res = s.playlists.upload_playlist(path="/home/barkley/playlist.m3u", force=::PlexRubySDK::Operations::QueryParamForce::ZERO, section_id=1)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | Example                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `path`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | absolute path to a directory on the server where m3u files are stored, or the absolute path to a playlist file on the server. <br/>If the `path` argument is a directory, that path will be scanned for playlist files to be processed. <br/>Each file in that directory creates a separate playlist, with a name based on the filename of the file that created it. <br/>The GUID of each playlist is based on the filename. <br/>If the `path` argument is a file, that file will be used to create a new playlist, with the name based on the filename of the file that created it. <br/>The GUID of each playlist is based on the filename.<br/> | /home/barkley/playlist.m3u                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `force`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | [::PlexRubySDK::Operations::QueryParamForce](../../models/operations/queryparamforce.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Force overwriting of duplicate playlists.  <br/>By default, a playlist file uploaded with the same path will overwrite the existing playlist. <br/>The `force` argument is used to disable overwriting.  <br/>If the `force` argument is set to 0, a new playlist will be created suffixed with the date and time that the duplicate was uploaded.<br/>                                                                                                                                                                                                                                                                      |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| `section_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | *::Integer*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Possibly the section ID to upload the playlist to, we are not certain.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |

### Response

**[T.nilable(::PlexRubySDK::Operations::UploadPlaylistResponse)](../../models/operations/uploadplaylistresponse.md)**


