# Plex

## Overview

API Calls that perform operations directly against https://Plex.tv


### Available Operations

* [get_companions_data](#get_companions_data) - Get Companions Data
* [get_user_friends](#get_user_friends) - Get list of friends of the user logged in
* [get_geo_data](#get_geo_data) - Get Geo Data
* [get_home_data](#get_home_data) - Get Plex Home Data
* [get_server_resources](#get_server_resources) - Get Server Resources
* [get_pin](#get_pin) - Get a Pin
* [get_token_by_pin_id](#get_token_by_pin_id) - Get Access Token by PinId

## get_companions_data

Get Companions Data

### Example Usage

```ruby
require 'plexruby'


s = ::PlexRubySDK::PlexAPI.new(
      x_plex_client_identifier: "gcgzw5rz2xovp84b4vha3a40",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.plex.get_companions_data()

if ! res.response_bodies.nil?
  # handle response
end

```

### Parameters

| Parameter                      | Type                           | Required                       | Description                    |
| ------------------------------ | ------------------------------ | ------------------------------ | ------------------------------ |
| `server_url`                   | *String*                       | :heavy_minus_sign:             | An optional server URL to use. |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetCompanionsDataResponse)](../../models/operations/getcompanionsdataresponse.md)**




## get_user_friends

Get friends of provided auth token.

### Example Usage

```ruby
require 'plexruby'


s = ::PlexRubySDK::PlexAPI.new(
      x_plex_client_identifier: "gcgzw5rz2xovp84b4vha3a40",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.plex.get_user_friends()

if ! res.friends.nil?
  # handle response
end

```

### Parameters

| Parameter                      | Type                           | Required                       | Description                    |
| ------------------------------ | ------------------------------ | ------------------------------ | ------------------------------ |
| `server_url`                   | *String*                       | :heavy_minus_sign:             | An optional server URL to use. |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetUserFriendsResponse)](../../models/operations/getuserfriendsresponse.md)**




## get_geo_data

Returns the geolocation and locale data of the caller

### Example Usage

```ruby
require 'plexruby'


s = ::PlexRubySDK::PlexAPI.new(
      x_plex_client_identifier: "gcgzw5rz2xovp84b4vha3a40",
    )

    
res = s.plex.get_geo_data()

if ! res.geo_data.nil?
  # handle response
end

```

### Parameters

| Parameter                      | Type                           | Required                       | Description                    |
| ------------------------------ | ------------------------------ | ------------------------------ | ------------------------------ |
| `server_url`                   | *String*                       | :heavy_minus_sign:             | An optional server URL to use. |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetGeoDataResponse)](../../models/operations/getgeodataresponse.md)**




## get_home_data

Retrieves the home data for the authenticated user, including details like home ID, name, guest access information, and subscription status.

### Example Usage

```ruby
require 'plexruby'


s = ::PlexRubySDK::PlexAPI.new(
      x_plex_client_identifier: "gcgzw5rz2xovp84b4vha3a40",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.plex.get_home_data()

if ! res.object.nil?
  # handle response
end

```

### Response

**[T.nilable(::PlexRubySDK::Operations::GetHomeDataResponse)](../../models/operations/gethomedataresponse.md)**




## get_server_resources

Get Plex server access tokens and server connections

### Example Usage

```ruby
require 'plexruby'


s = ::PlexRubySDK::PlexAPI.new(
      x_plex_client_identifier: "gcgzw5rz2xovp84b4vha3a40",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.plex.get_server_resources(x_plex_client_identifier="gcgzw5rz2xovp84b4vha3a40", include_https=::PlexRubySDK::Operations::IncludeHttps::ONE, include_relay=::PlexRubySDK::Operations::IncludeRelay::ONE, include_i_pv6=::PlexRubySDK::Operations::IncludeIPv6::ONE)

if ! res.plex_devices.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                             | Type                                                                                                                                                                  | Required                                                                                                                                                              | Description                                                                                                                                                           | Example                                                                                                                                                               |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `x_plex_client_identifier`                                                                                                                                            | *::String*                                                                                                                                                            | :heavy_minus_sign:                                                                                                                                                    | The unique identifier for the client application<br/>This is used to track the client application and its usage<br/>(UUID, serial number, or other number unique per device)<br/> | gcgzw5rz2xovp84b4vha3a40                                                                                                                                              |
| `include_https`                                                                                                                                                       | [::PlexRubySDK::Operations::IncludeHttps](../../models/operations/includehttps.md)                                                                                    | :heavy_minus_sign:                                                                                                                                                    | Include Https entries in the results                                                                                                                                  | 1                                                                                                                                                                     |
| `include_relay`                                                                                                                                                       | [::PlexRubySDK::Operations::IncludeRelay](../../models/operations/includerelay.md)                                                                                    | :heavy_minus_sign:                                                                                                                                                    | Include Relay addresses in the results <br/>E.g: https://10-0-0-25.bbf8e10c7fa20447cacee74cd9914cde.plex.direct:32400<br/>                                            | 1                                                                                                                                                                     |
| `include_i_pv6`                                                                                                                                                       | [::PlexRubySDK::Operations::IncludeIPv6](../../models/operations/includeipv6.md)                                                                                      | :heavy_minus_sign:                                                                                                                                                    | Include IPv6 entries in the results                                                                                                                                   | 1                                                                                                                                                                     |
| `server_url`                                                                                                                                                          | *String*                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                    | An optional server URL to use.                                                                                                                                        | http://localhost:8080                                                                                                                                                 |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetServerResourcesResponse)](../../models/operations/getserverresourcesresponse.md)**




## get_pin

Retrieve a Pin from Plex.tv for authentication flows

### Example Usage

```ruby
require 'plexruby'


s = ::PlexRubySDK::PlexAPI.new(
      x_plex_client_identifier: "gcgzw5rz2xovp84b4vha3a40",
    )

    
res = s.plex.get_pin(strong=false, x_plex_client_identifier="gcgzw5rz2xovp84b4vha3a40", x_plex_product="Plex Web")

if ! res.auth_pin_container.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                             | Type                                                                                                                                                                  | Required                                                                                                                                                              | Description                                                                                                                                                           | Example                                                                                                                                                               |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `strong`                                                                                                                                                              | *T::Boolean*                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                    | Determines the kind of code returned by the API call<br/>Strong codes are used for Pin authentication flows<br/>Non-Strong codes are used for `Plex.tv/link`<br/>     |                                                                                                                                                                       |
| `x_plex_client_identifier`                                                                                                                                            | *::String*                                                                                                                                                            | :heavy_minus_sign:                                                                                                                                                    | The unique identifier for the client application<br/>This is used to track the client application and its usage<br/>(UUID, serial number, or other number unique per device)<br/> | gcgzw5rz2xovp84b4vha3a40                                                                                                                                              |
| `x_plex_product`                                                                                                                                                      | *::String*                                                                                                                                                            | :heavy_minus_sign:                                                                                                                                                    | N/A                                                                                                                                                                   | Plex Web                                                                                                                                                              |
| `server_url`                                                                                                                                                          | *String*                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                    | An optional server URL to use.                                                                                                                                        | http://localhost:8080                                                                                                                                                 |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetPinResponse)](../../models/operations/getpinresponse.md)**




## get_token_by_pin_id

Retrieve an Access Token from Plex.tv after the Pin has been authenticated

### Example Usage

```ruby
require 'plexruby'


s = ::PlexRubySDK::PlexAPI.new(
      x_plex_client_identifier: "gcgzw5rz2xovp84b4vha3a40",
    )

    
res = s.plex.get_token_by_pin_id(pin_id=408895, x_plex_client_identifier="gcgzw5rz2xovp84b4vha3a40")

if ! res.auth_pin_container.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                             | Type                                                                                                                                                                  | Required                                                                                                                                                              | Description                                                                                                                                                           | Example                                                                                                                                                               |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `pin_id`                                                                                                                                                              | *::Integer*                                                                                                                                                           | :heavy_check_mark:                                                                                                                                                    | The PinID to retrieve an access token for                                                                                                                             |                                                                                                                                                                       |
| `x_plex_client_identifier`                                                                                                                                            | *::String*                                                                                                                                                            | :heavy_minus_sign:                                                                                                                                                    | The unique identifier for the client application<br/>This is used to track the client application and its usage<br/>(UUID, serial number, or other number unique per device)<br/> | gcgzw5rz2xovp84b4vha3a40                                                                                                                                              |
| `server_url`                                                                                                                                                          | *String*                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                    | An optional server URL to use.                                                                                                                                        | http://localhost:8080                                                                                                                                                 |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetTokenByPinIdResponse)](../../models/operations/gettokenbypinidresponse.md)**


