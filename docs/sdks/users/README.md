# Users
(*users*)

## Overview

### Available Operations

* [get_users](#get_users) - Get list of all connected users

## get_users

Get list of all users that are friends and have library access with the provided Plex authentication token

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new

req = ::PlexRubySDK::Operations::GetUsersRequest.new(
  client_id: "3381b62b-9ab7-4e37-827b-203e9809eb58",
  client_name: "Plex for Roku",
  device_nickname: "Roku 3",
  device_name: "Chrome",
  device_screen_resolution: "1487x1165,2560x1440",
  client_version: "2.4.1",
  platform: "Roku",
  client_features: "external-media,indirect-media,hub-style-list",
  model: "4200X",
  x_plex_session_id: "97e136ef-4ddd-4ff3-89a7-a5820c96c2ca",
  x_plex_language: "en",
  platform_version: "4.3 build 1057",
  x_plex_token: "CV5xoxjTpFKUzBTShsaf",
)

res = s.users.get_users(req)

if ! res.body.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `request`                                                                                | [::PlexRubySDK::Operations::GetUsersRequest](../../models/operations/getusersrequest.md) | :heavy_check_mark:                                                                       | The request object to use for the request.                                               |
| `server_url`                                                                             | *String*                                                                                 | :heavy_minus_sign:                                                                       | An optional server URL to use.                                                           |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetUsersResponse)](../../models/operations/getusersresponse.md)**

