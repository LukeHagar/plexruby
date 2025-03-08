# Statistics
(*statistics*)

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
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: ::PlexRubySDK::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.statistics.get_statistics(timespan=4)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               | Example                                                                                   |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `timespan`                                                                                | *T.nilable(::Integer)*                                                                    | :heavy_minus_sign:                                                                        | The timespan to retrieve statistics for<br/>the exact meaning of this parameter is not known<br/> | 4                                                                                         |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetStatisticsResponse)](../../models/operations/getstatisticsresponse.md)**



## get_resources_statistics

This will return the resources for the server

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: ::PlexRubySDK::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.statistics.get_resources_statistics(timespan=4)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               | Example                                                                                   |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `timespan`                                                                                | *T.nilable(::Integer)*                                                                    | :heavy_minus_sign:                                                                        | The timespan to retrieve statistics for<br/>the exact meaning of this parameter is not known<br/> | 4                                                                                         |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetResourcesStatisticsResponse)](../../models/operations/getresourcesstatisticsresponse.md)**



## get_bandwidth_statistics

This will return the bandwidth statistics for the server

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: ::PlexRubySDK::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.statistics.get_bandwidth_statistics(timespan=4)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               | Example                                                                                   |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `timespan`                                                                                | *T.nilable(::Integer)*                                                                    | :heavy_minus_sign:                                                                        | The timespan to retrieve statistics for<br/>the exact meaning of this parameter is not known<br/> | 4                                                                                         |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetBandwidthStatisticsResponse)](../../models/operations/getbandwidthstatisticsresponse.md)**

