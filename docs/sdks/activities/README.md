# Activities
(*activities*)

## Overview

Activities are awesome. They provide a way to monitor and control asynchronous operations on the server. In order to receive real-time updates for activities, a client would normally subscribe via either EventSource or Websocket endpoints.
Activities are associated with HTTP replies via a special `X-Plex-Activity` header which contains the UUID of the activity.
Activities are optional cancellable. If cancellable, they may be cancelled via the `DELETE` endpoint. Other details:
- They can contain a `progress` (from 0 to 100) marking the percent completion of the activity.
- They must contain an `type` which is used by clients to distinguish the specific activity.
- They may contain a `Context` object with attributes which associate the activity with various specific entities (items, libraries, etc.)
- The may contain a `Response` object which attributes which represent the result of the asynchronous operation.


### Available Operations

* [get_server_activities](#get_server_activities) - Get Server Activities
* [cancel_server_activities](#cancel_server_activities) - Cancel Server Activities

## get_server_activities

Get Server Activities

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.activities.get_server_activities()

if ! res.object.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GetServerActivitiesResponse)](../../models/operations/getserveractivitiesresponse.md)**



## cancel_server_activities

Cancel Server Activities

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.activities.cancel_server_activities(activity_uuid="25b71ed5-0f9d-461c-baa7-d404e9e10d3e")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                            | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `activity_uuid`                      | *::String*                           | :heavy_check_mark:                   | The UUID of the activity to cancel.  | 25b71ed5-0f9d-461c-baa7-d404e9e10d3e |

### Response

**[T.nilable(Models::Operations::CancelServerActivitiesResponse)](../../models/operations/cancelserveractivitiesresponse.md)**

