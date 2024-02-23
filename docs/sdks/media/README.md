# Media


## Overview

API Calls interacting with Plex Media Server Media


### Available Operations

* [mark_played](#mark_played) - Mark Media Played
* [mark_unplayed](#mark_unplayed) - Mark Media Unplayed
* [update_play_progress](#update_play_progress) - Update Media Play Progress

## mark_played

This will mark the provided media key as Played.

### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.media.mark_played(key=59398.0)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                       | Type                            | Required                        | Description                     | Example                         |
| ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- |
| `key`                           | *::Float*                       | :heavy_check_mark:              | The media key to mark as played | 59398                           |


### Response

**[T.nilable(::OpenApiSDK::Operations::MarkPlayedResponse)](../../models/operations/markplayedresponse.md)**


## mark_unplayed

This will mark the provided media key as Unplayed.

### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.media.mark_unplayed(key=59398.0)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                         | Type                              | Required                          | Description                       | Example                           |
| --------------------------------- | --------------------------------- | --------------------------------- | --------------------------------- | --------------------------------- |
| `key`                             | *::Float*                         | :heavy_check_mark:                | The media key to mark as Unplayed | 59398                             |


### Response

**[T.nilable(::OpenApiSDK::Operations::MarkUnplayedResponse)](../../models/operations/markunplayedresponse.md)**


## update_play_progress

This API command can be used to update the play progress of a media item.


### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.media.update_play_progress(key="<value>", time=6900.91, state="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `key`                                                               | *::String*                                                          | :heavy_check_mark:                                                  | the media key                                                       |
| `time`                                                              | *::Float*                                                           | :heavy_check_mark:                                                  | The time, in milliseconds, used to set the media playback progress. |
| `state`                                                             | *::String*                                                          | :heavy_check_mark:                                                  | The playback state of the media item.                               |


### Response

**[T.nilable(::OpenApiSDK::Operations::UpdatePlayProgressResponse)](../../models/operations/updateplayprogressresponse.md)**

