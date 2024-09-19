# Watchlist

## Overview

API Calls that perform operations with Plex Media Server Watchlists


### Available Operations

* [get_watch_list](#get_watch_list) - Get User Watchlist

## get_watch_list

Get User Watchlist

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


req = ::PlexRubySDK::Operations::GetWatchListRequest.new(
  filter: ::PlexRubySDK::Operations::Filter::AVAILABLE,
  x_plex_container_start: 0,
  x_plex_container_size: 50,
  x_plex_token: "CV5xoxjTpFKUzBTShsaf",
)
    
res = s.watchlist.get_watch_list(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                        | Type                                                                                             | Required                                                                                         | Description                                                                                      |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| `request`                                                                                        | [::PlexRubySDK::Operations::GetWatchListRequest](../../models/operations/getwatchlistrequest.md) | :heavy_check_mark:                                                                               | The request object to use for the request.                                                       |
| `server_url`                                                                                     | *String*                                                                                         | :heavy_minus_sign:                                                                               | An optional server URL to use.                                                                   |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetWatchListResponse)](../../models/operations/getwatchlistresponse.md)**


