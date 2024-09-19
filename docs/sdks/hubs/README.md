# Hubs

## Overview

Hubs are a structured two-dimensional container for media, generally represented by multiple horizontal rows.


### Available Operations

* [get_global_hubs](#get_global_hubs) - Get Global Hubs
* [get_library_hubs](#get_library_hubs) - Get library specific hubs

## get_global_hubs

Get Global Hubs filtered by the parameters provided.

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

    
res = s.hubs.get_global_hubs(count=1262.49, only_transient=::PlexRubySDK::Operations::OnlyTransient::ONE)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                             | Type                                                                                                                                                  | Required                                                                                                                                              | Description                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `count`                                                                                                                                               | *::Float*                                                                                                                                             | :heavy_minus_sign:                                                                                                                                    | The number of items to return with each hub.                                                                                                          |
| `only_transient`                                                                                                                                      | [::PlexRubySDK::Operations::OnlyTransient](../../models/operations/onlytransient.md)                                                                  | :heavy_minus_sign:                                                                                                                                    | Only return hubs which are "transient", meaning those which are prone to changing after media playback or addition (e.g. On Deck, or Recently Added). |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetGlobalHubsResponse)](../../models/operations/getglobalhubsresponse.md)**




## get_library_hubs

This endpoint will return a list of library specific hubs


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

    
res = s.hubs.get_library_hubs(section_id=6728.76, count=9010.22, only_transient=::PlexRubySDK::Operations::QueryParamOnlyTransient::ZERO)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                             | Type                                                                                                                                                  | Required                                                                                                                                              | Description                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `section_id`                                                                                                                                          | *::Float*                                                                                                                                             | :heavy_check_mark:                                                                                                                                    | the Id of the library to query                                                                                                                        |
| `count`                                                                                                                                               | *::Float*                                                                                                                                             | :heavy_minus_sign:                                                                                                                                    | The number of items to return with each hub.                                                                                                          |
| `only_transient`                                                                                                                                      | [::PlexRubySDK::Operations::QueryParamOnlyTransient](../../models/operations/queryparamonlytransient.md)                                              | :heavy_minus_sign:                                                                                                                                    | Only return hubs which are "transient", meaning those which are prone to changing after media playback or addition (e.g. On Deck, or Recently Added). |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetLibraryHubsResponse)](../../models/operations/getlibraryhubsresponse.md)**


