# Plex


## Overview

API Calls that perform operations directly against https://Plex.tv


### Available Operations

* [get_pin](#get_pin) - Get a Pin
* [get_token](#get_token) - Get Access Token

## get_pin

Retrieve a Pin from Plex.tv for authentication flows

### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new

    
res = s.plex.get_pin(x_plex_client_identifier="<value>", strong=false)

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                             | Type                                                                                                                                                                  | Required                                                                                                                                                              | Description                                                                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `x_plex_client_identifier`                                                                                                                                            | *::String*                                                                                                                                                            | :heavy_check_mark:                                                                                                                                                    | The unique identifier for the client application<br/>This is used to track the client application and its usage<br/>(UUID, serial number, or other number unique per device)<br/> |
| `strong`                                                                                                                                                              | *T::Boolean*                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                    | Determines the kind of code returned by the API call<br/>Strong codes are used for Pin authentication flows<br/>Non-Strong codes are used for `Plex.tv/link`<br/>     |
| `server_url`                                                                                                                                                          | *String*                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                    | An optional server URL to use.                                                                                                                                        |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetPinResponse)](../../models/operations/getpinresponse.md)**


## get_token

Retrieve an Access Token from Plex.tv after the Pin has already been authenticated

### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new

    
res = s.plex.get_token(pin_id="<value>", x_plex_client_identifier="<value>")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                             | Type                                                                                                                                                                  | Required                                                                                                                                                              | Description                                                                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `pin_id`                                                                                                                                                              | *::String*                                                                                                                                                            | :heavy_check_mark:                                                                                                                                                    | The PinID to retrieve an access token for                                                                                                                             |
| `x_plex_client_identifier`                                                                                                                                            | *::String*                                                                                                                                                            | :heavy_check_mark:                                                                                                                                                    | The unique identifier for the client application<br/>This is used to track the client application and its usage<br/>(UUID, serial number, or other number unique per device)<br/> |
| `server_url`                                                                                                                                                          | *String*                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                    | An optional server URL to use.                                                                                                                                        |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetTokenResponse)](../../models/operations/gettokenresponse.md)**

