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
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new(
      x_plex_client_identifier: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.updater.get_update_status()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::GetUpdateStatusResponse)](../../models/operations/getupdatestatusresponse.md)**


## check_for_updates

Checking for updates

### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new(
      x_plex_client_identifier: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.updater.check_for_updates(download=::OpenApiSDK::Operations::Download::ONE)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `download`                                                                | [::OpenApiSDK::Operations::Download](../../models/operations/download.md) | :heavy_minus_sign:                                                        | Indicate that you want to start download any updates found.               |


### Response

**[T.nilable(::OpenApiSDK::Operations::CheckForUpdatesResponse)](../../models/operations/checkforupdatesresponse.md)**


## apply_updates

Note that these two parameters are effectively mutually exclusive. The `tonight` parameter takes precedence and `skip` will be ignored if `tonight` is also passed


### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new(
      x_plex_client_identifier: "<value>",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.updater.apply_updates(tonight=::OpenApiSDK::Operations::Tonight::ONE, skip=::OpenApiSDK::Operations::Skip::ZERO)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                | Type                                                                                                                                                     | Required                                                                                                                                                 | Description                                                                                                                                              |
| -------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `tonight`                                                                                                                                                | [::OpenApiSDK::Operations::Tonight](../../models/operations/tonight.md)                                                                                  | :heavy_minus_sign:                                                                                                                                       | Indicate that you want the update to run during the next Butler execution. Omitting this or setting it to false indicates that the update should install |
| `skip`                                                                                                                                                   | [::OpenApiSDK::Operations::Skip](../../models/operations/skip.md)                                                                                        | :heavy_minus_sign:                                                                                                                                       | Indicate that the latest version should be marked as skipped. The <Release> entry for this version will have the `state` set to `skipped`.               |


### Response

**[T.nilable(::OpenApiSDK::Operations::ApplyUpdatesResponse)](../../models/operations/applyupdatesresponse.md)**

