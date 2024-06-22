# Statistics


## Overview

API Calls that perform operations with Plex Media Server Statistics


### Available Operations

* [get_statistics](#get_statistics) - Get Media Statistics
* [get_resources_statistics](#get_resources_statistics) - Get Resources Statistics
* [get_bandwidth_statistics](#get_bandwidth_statistics) - Get Bandwidth Statistics

## get_statistics

This will return the media statistics for the server

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

    
res = s.statistics.get_statistics(timespan=4)

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               | Example                                                                                   |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `timespan`                                                                                | *::Integer*                                                                               | :heavy_minus_sign:                                                                        | The timespan to retrieve statistics for<br/>the exact meaning of this parameter is not known<br/> | 4                                                                                         |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetStatisticsResponse)](../../models/operations/getstatisticsresponse.md)**


## get_resources_statistics

This will return the resources for the server

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

    
res = s.statistics.get_resources_statistics(timespan=4)

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               | Example                                                                                   |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `timespan`                                                                                | *::Integer*                                                                               | :heavy_minus_sign:                                                                        | The timespan to retrieve statistics for<br/>the exact meaning of this parameter is not known<br/> | 4                                                                                         |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetResourcesStatisticsResponse)](../../models/operations/getresourcesstatisticsresponse.md)**


## get_bandwidth_statistics

This will return the bandwidth statistics for the server

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

    
res = s.statistics.get_bandwidth_statistics(timespan=4)

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               | Example                                                                                   |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `timespan`                                                                                | *::Integer*                                                                               | :heavy_minus_sign:                                                                        | The timespan to retrieve statistics for<br/>the exact meaning of this parameter is not known<br/> | 4                                                                                         |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetBandwidthStatisticsResponse)](../../models/operations/getbandwidthstatisticsresponse.md)**

