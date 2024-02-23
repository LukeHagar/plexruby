# Statistics


## Overview

API Calls that perform operations with Plex Media Server Statistics


### Available Operations

* [get_statistics](#get_statistics) - Get Media Statistics

## get_statistics

This will return the media statistics for the server

### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.statistics.get_statistics(timespan=411769)

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `timespan`                                                                                | *::Integer*                                                                               | :heavy_minus_sign:                                                                        | The timespan to retrieve statistics for<br/>the exact meaning of this parameter is not known<br/> |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetStatisticsResponse)](../../models/operations/getstatisticsresponse.md)**

