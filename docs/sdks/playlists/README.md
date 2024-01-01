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
- `uri` - The content URI for what we're playing (e.g. `library://...`).
- `playQueueID` - To create a playlist from an existing play queue.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::CreatePlaylistRequest.new(
  title="string",
  type=Operations::Type::PHOTO,
  smart=Operations::Smart::ONE,
)
    
res = s.playlists.create_playlist(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `request`                                                                             | [Operations::CreatePlaylistRequest](../../models/operations/createplaylistrequest.md) | :heavy_check_mark:                                                                    | The request object to use for the request.                                            |


### Response

**[T.nilable(Operations::CreatePlaylistResponse)](../../models/operations/createplaylistresponse.md)**


## get_playlists

Get All Playlists given the specified filters.

### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetPlaylistsRequest.new()
    
res = s.playlists.get_playlists(playlist_type=Operations::PlaylistType::AUDIO, smart=Operations::QueryParamSmart::ZERO)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `playlist_type`                                                           | [Operations::PlaylistType](../../models/operations/playlisttype.md)       | :heavy_minus_sign:                                                        | limit to a type of playlist.                                              |
| `smart`                                                                   | [Operations::QueryParamSmart](../../models/operations/queryparamsmart.md) | :heavy_minus_sign:                                                        | type of playlists to return (default is all).                             |


### Response

**[T.nilable(Operations::GetPlaylistsResponse)](../../models/operations/getplaylistsresponse.md)**


## get_playlist

Gets detailed metadata for a playlist. A playlist for many purposes (rating, editing metadata, tagging), can be treated like a regular metadata item:
Smart playlist details contain the `content` attribute. This is the content URI for the generator. This can then be parsed by a client to provide smart playlist editing.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetPlaylistRequest.new(
  playlist_id=4109.48,
)
    
res = s.playlists.get_playlist(playlist_id=648.65)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `playlist_id`          | *Float*                | :heavy_check_mark:     | the ID of the playlist |


### Response

**[T.nilable(Operations::GetPlaylistResponse)](../../models/operations/getplaylistresponse.md)**


## delete_playlist

This endpoint will delete a playlist


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::DeletePlaylistRequest.new(
  playlist_id=216.22,
)
    
res = s.playlists.delete_playlist(playlist_id=7940.39)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `playlist_id`          | *Float*                | :heavy_check_mark:     | the ID of the playlist |


### Response

**[T.nilable(Operations::DeletePlaylistResponse)](../../models/operations/deleteplaylistresponse.md)**


## update_playlist

From PMS version 1.9.1 clients can also edit playlist metadata using this endpoint as they would via `PUT /library/metadata/{playlistID}`


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UpdatePlaylistRequest.new(
  playlist_id=3915,
)
    
res = s.playlists.update_playlist(playlist_id=4392.64)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `playlist_id`          | *Float*                | :heavy_check_mark:     | the ID of the playlist |


### Response

**[T.nilable(Operations::UpdatePlaylistResponse)](../../models/operations/updateplaylistresponse.md)**


## get_playlist_contents

Gets the contents of a playlist. Should be paged by clients via standard mechanisms. 
By default leaves are returned (e.g. episodes, movies). In order to return other types you can use the `type` parameter. 
For example, you could use this to display a list of recently added albums vis a smart playlist. 
Note that for dumb playlists, items have a `playlistItemID` attribute which is used for deleting or moving items.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetPlaylistContentsRequest.new(
  playlist_id=5004.46,
  type=9403.59,
)
    
res = s.playlists.get_playlist_contents(playlist_id=2778.32, type=9553.81)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                               | Type                                    | Required                                | Description                             |
| --------------------------------------- | --------------------------------------- | --------------------------------------- | --------------------------------------- |
| `playlist_id`                           | *Float*                                 | :heavy_check_mark:                      | the ID of the playlist                  |
| `type`                                  | *Float*                                 | :heavy_check_mark:                      | the metadata type of the item to return |


### Response

**[T.nilable(Operations::GetPlaylistContentsResponse)](../../models/operations/getplaylistcontentsresponse.md)**


## clear_playlist_contents

Clears a playlist, only works with dumb playlists. Returns the playlist.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::ClearPlaylistContentsRequest.new(
  playlist_id=1893.18,
)
    
res = s.playlists.clear_playlist_contents(playlist_id=5454.46)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `playlist_id`          | *Float*                | :heavy_check_mark:     | the ID of the playlist |


### Response

**[T.nilable(Operations::ClearPlaylistContentsResponse)](../../models/operations/clearplaylistcontentsresponse.md)**


## add_playlist_contents

Adds a generator to a playlist, same parameters as the POST above. With a dumb playlist, this adds the specified items to the playlist. 
With a smart playlist, passing a new `uri` parameter replaces the rules for the playlist. Returns the playlist.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::AddPlaylistContentsRequest.new(
  playlist_id=8502.01,
  uri="library://..",
  play_queue_id=123,
)
    
res = s.playlists.add_playlist_contents(playlist_id=9815.72, uri="library://..", play_queue_id=123)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                           | Type                                | Required                            | Description                         | Example                             |
| ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- | ----------------------------------- |
| `playlist_id`                       | *Float*                             | :heavy_check_mark:                  | the ID of the playlist              |                                     |
| `uri`                               | *String*                            | :heavy_check_mark:                  | the content URI for the playlist    | library://..                        |
| `play_queue_id`                     | *Float*                             | :heavy_check_mark:                  | the play queue to add to a playlist | 123                                 |


### Response

**[T.nilable(Operations::AddPlaylistContentsResponse)](../../models/operations/addplaylistcontentsresponse.md)**


## upload_playlist

Imports m3u playlists by passing a path on the server to scan for m3u-formatted playlist files, or a path to a single playlist file.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::UploadPlaylistRequest.new(
  path="/home/barkley/playlist.m3u",
  force=Operations::Force::ZERO,
)
    
res = s.playlists.upload_playlist(path="/home/barkley/playlist.m3u", force=Operations::Force::ZERO)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | Example                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `path`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | absolute path to a directory on the server where m3u files are stored, or the absolute path to a playlist file on the server. <br/>If the `path` argument is a directory, that path will be scanned for playlist files to be processed. <br/>Each file in that directory creates a separate playlist, with a name based on the filename of the file that created it. <br/>The GUID of each playlist is based on the filename. <br/>If the `path` argument is a file, that file will be used to create a new playlist, with the name based on the filename of the file that created it. <br/>The GUID of each playlist is based on the filename.<br/> | /home/barkley/playlist.m3u                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| `force`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | [Operations::Force](../../models/operations/force.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | force overwriting of duplicate playlists. By default, a playlist file uploaded with the same path will overwrite the existing playlist. <br/>The `force` argument is used to disable overwriting. If the `force` argument is set to 0, a new playlist will be created suffixed with the date and time that the duplicate was uploaded.<br/>                                                                                                                                                                                                                                                                                  |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |


### Response

**[T.nilable(Operations::UploadPlaylistResponse)](../../models/operations/uploadplaylistresponse.md)**
