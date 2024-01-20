# Server


## Overview

Operations against the Plex Media Server System.


### Available Operations

* [get_server_capabilities](#get_server_capabilities) - Server Capabilities
* [get_server_preferences](#get_server_preferences) - Get Server Preferences
* [get_available_clients](#get_available_clients) - Get Available Clients
* [get_devices](#get_devices) - Get Devices
* [get_server_identity](#get_server_identity) - Get Server Identity
* [get_my_plex_account](#get_my_plex_account) - Get MyPlex Account
* [get_resized_photo](#get_resized_photo) - Get a Resized Photo
* [get_server_list](#get_server_list) - Get Server List

## get_server_capabilities

Server Capabilities

### Example Usage

```ruby
require_relative plexruby


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.server.get_server_capabilities()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetServerCapabilitiesResponse)](../../models/operations/getservercapabilitiesresponse.md)**


## get_server_preferences

Get Server Preferences

### Example Usage

```ruby
require_relative plexruby


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.server.get_server_preferences()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetServerPreferencesResponse)](../../models/operations/getserverpreferencesresponse.md)**


## get_available_clients

Get Available Clients

### Example Usage

```ruby
require_relative plexruby


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.server.get_available_clients()

if ! res.response_bodies.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetAvailableClientsResponse)](../../models/operations/getavailableclientsresponse.md)**


## get_devices

Get Devices

### Example Usage

```ruby
require_relative plexruby


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.server.get_devices()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetDevicesResponse)](../../models/operations/getdevicesresponse.md)**


## get_server_identity

Get Server Identity

### Example Usage

```ruby
require_relative plexruby


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.server.get_server_identity()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetServerIdentityResponse)](../../models/operations/getserveridentityresponse.md)**


## get_my_plex_account

Returns MyPlex Account Information

### Example Usage

```ruby
require_relative plexruby


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.server.get_my_plex_account()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetMyPlexAccountResponse)](../../models/operations/getmyplexaccountresponse.md)**


## get_resized_photo

Plex's Photo transcoder is used throughout the service to serve images at specified sizes.


### Example Usage

```ruby
require_relative plexruby


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetResizedPhotoRequest.new(
  width=110,
  height=165,
  opacity=643869,
  blur=4000,
  min_size=Operations::MinSize::ZERO,
  upscale=Operations::Upscale::ZERO,
  url="/library/metadata/49564/thumb/1654258204",
)
    
res = s.server.get_resized_photo(req)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `request`                                                                               | [Operations::GetResizedPhotoRequest](../../models/operations/getresizedphotorequest.md) | :heavy_check_mark:                                                                      | The request object to use for the request.                                              |


### Response

**[T.nilable(Operations::GetResizedPhotoResponse)](../../models/operations/getresizedphotoresponse.md)**


## get_server_list

Get Server List

### Example Usage

```ruby
require_relative plexruby


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.server.get_server_list()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetServerListResponse)](../../models/operations/getserverlistresponse.md)**

