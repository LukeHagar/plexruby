# Updater

## Overview

This describes the API for searching and applying updates to the Plex Media Server.
Updates to the status can be observed via the Event API.


### Available Operations

* [get_update_status](#get_update_status) - Querying status of updates
* [check_for_updates](#check_for_updates) - Checking for updates
* [apply_updates](#apply_updates) - Apply Updates

## get_update_status

Querying status of updates

### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "3381b62b-9ab7-4e37-827b-203e9809eb58",
      client_name: "Plex for Roku",
      client_version: "2.4.1",
      platform: "Roku",
      device_nickname: "Roku 3",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.updater.get_update_status()

if ! res.object.nil?
  # handle response
end

```

### Response

**[T.nilable(::PlexRubySDK::Operations::GetUpdateStatusResponse)](../../models/operations/getupdatestatusresponse.md)**



## check_for_updates

Checking for updates

### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "3381b62b-9ab7-4e37-827b-203e9809eb58",
      client_name: "Plex for Roku",
      client_version: "2.4.1",
      platform: "Roku",
      device_nickname: "Roku 3",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.updater.check_for_updates(download=::PlexRubySDK::Operations::Download::ONE)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                             | Type                                                                                  | Required                                                                              | Description                                                                           | Example                                                                               |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| `download`                                                                            | [T.nilable(::PlexRubySDK::Operations::Download)](../../models/operations/download.md) | :heavy_minus_sign:                                                                    | Indicate that you want to start download any updates found.                           | 1                                                                                     |

### Response

**[T.nilable(::PlexRubySDK::Operations::CheckForUpdatesResponse)](../../models/operations/checkforupdatesresponse.md)**



## apply_updates

Note that these two parameters are effectively mutually exclusive. The `tonight` parameter takes precedence and `skip` will be ignored if `tonight` is also passed


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "3381b62b-9ab7-4e37-827b-203e9809eb58",
      client_name: "Plex for Roku",
      client_version: "2.4.1",
      platform: "Roku",
      device_nickname: "Roku 3",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.updater.apply_updates(tonight=::PlexRubySDK::Operations::Tonight::ONE, skip=::PlexRubySDK::Operations::Skip::ONE)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                | Type                                                                                                                                                     | Required                                                                                                                                                 | Description                                                                                                                                              | Example                                                                                                                                                  |
| -------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `tonight`                                                                                                                                                | [T.nilable(::PlexRubySDK::Operations::Tonight)](../../models/operations/tonight.md)                                                                      | :heavy_minus_sign:                                                                                                                                       | Indicate that you want the update to run during the next Butler execution. Omitting this or setting it to false indicates that the update should install | 1                                                                                                                                                        |
| `skip`                                                                                                                                                   | [T.nilable(::PlexRubySDK::Operations::Skip)](../../models/operations/skip.md)                                                                            | :heavy_minus_sign:                                                                                                                                       | Indicate that the latest version should be marked as skipped. The [Release] entry for this version will have the `state` set to `skipped`.               | 1                                                                                                                                                        |

### Response

**[T.nilable(::PlexRubySDK::Operations::ApplyUpdatesResponse)](../../models/operations/applyupdatesresponse.md)**

