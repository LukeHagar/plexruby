# Video


## Overview

API Calls that perform operations with Plex Media Server Videos


### Available Operations

* [start_universal_transcode](#start_universal_transcode) - Start Universal Transcode
* [get_timeline](#get_timeline) - Get the timeline for a media item

## start_universal_transcode

Begin a Universal Transcode Session

### Example Usage

```ruby
require_relative plexruby


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  security=::OpenApiSDK::Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Operations::StartUniversalTranscodeRequest.new(
  has_mde=8924.99,
  path="/etc/mail",
  media_index=9962.95,
  part_index=1232.82,
  protocol="string",
)
    
res = s.video.start_universal_transcode(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::OpenApiSDK::Operations::StartUniversalTranscodeRequest](../../models/operations/startuniversaltranscoderequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(::OpenApiSDK::Operations::StartUniversalTranscodeResponse)](../../models/operations/startuniversaltranscoderesponse.md)**


## get_timeline

Get the timeline for a media item

### Example Usage

```ruby
require_relative plexruby


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  security=::OpenApiSDK::Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = ::OpenApiSDK::Operations::GetTimelineRequest.new(
  rating_key=716.56,
  key="<key>",
  state=::OpenApiSDK::Operations::State::PAUSED,
  has_mde=7574.33,
  time=3327.51,
  duration=7585.39,
  context="string",
  play_queue_item_id=1406.21,
  play_back_time=2699.34,
  row=3536.42,
)
    
res = s.video.get_timeline(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [::OpenApiSDK::Operations::GetTimelineRequest](../../models/operations/gettimelinerequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetTimelineResponse)](../../models/operations/gettimelineresponse.md)**

