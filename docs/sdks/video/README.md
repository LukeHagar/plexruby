# Video
(*video*)

## Overview

API Calls that perform operations with Plex Media Server Videos


### Available Operations

* [get_timeline](#get_timeline) - Get the timeline for a media item
* [start_universal_transcode](#start_universal_transcode) - Start Universal Transcode

## get_timeline

Get the timeline for a media item

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::GetTimelineRequest.new(
  rating_key: 23409.0,
  key: "/library/metadata/23409",
  state: Models::Operations::State::PLAYING,
  has_mde: 1.0,
  time: 2000.0,
  duration: 10000.0,
  context: "home:hub.continueWatching",
  play_queue_item_id: 1.0,
  play_back_time: 2000.0,
  row: 1.0,
)

res = s.video.get_timeline(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Models::Operations::GetTimelineRequest](../../models/operations/gettimelinerequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |

### Response

**[T.nilable(Models::Operations::GetTimelineResponse)](../../models/operations/gettimelineresponse.md)**



## start_universal_transcode

Begin a Universal Transcode Session

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::StartUniversalTranscodeRequest.new(
  has_mde: 1.0,
  path: "/library/metadata/23409",
  media_index: 0.0,
  part_index: 0.0,
  protocol: "hls",
  fast_seek: 0.0,
  direct_play: 0.0,
  direct_stream: 0.0,
  subtitle_size: 100.0,
  subtites: "burn",
  audio_boost: 100.0,
  location: "lan",
  media_buffer_size: 102400.0,
  session: "zvcage8b7rkioqcm8f4uns4c",
  add_debug_overlay: 0.0,
  auto_adjust_quality: 0.0,
)

res = s.video.start_universal_transcode(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::StartUniversalTranscodeRequest](../../models/operations/startuniversaltranscoderequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::StartUniversalTranscodeResponse)](../../models/operations/startuniversaltranscoderesponse.md)**

