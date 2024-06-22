# Watchlist


## Overview

API Calls that perform operations with Plex Media Server Watchlists


### Available Operations

* [get_watchlist](#get_watchlist) - Get User Watchlist

## get_watchlist

Get User Watchlist

### Example Usage

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


req = ::OpenApiSDK::Operations::GetWatchlistRequest.new(
  filter: ::OpenApiSDK::Operations::PathParamFilter::RELEASED,
  x_plex_token: "<value>",
)
    
res = s.watchlist.get_watchlist(req)

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [::OpenApiSDK::Operations::GetWatchlistRequest](../../models/operations/getwatchlistrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |
| `server_url`                                                                                    | *String*                                                                                        | :heavy_minus_sign:                                                                              | An optional server URL to use.                                                                  |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetWatchlistResponse)](../../models/operations/getwatchlistresponse.md)**

