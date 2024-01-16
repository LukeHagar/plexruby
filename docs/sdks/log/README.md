# Log


## Overview

Submit logs to the Log Handler for Plex Media Server


### Available Operations

* [log_line](#log_line) - Logging a single line message.
* [log_multi_line](#log_multi_line) - Logging a multi-line message
* [enable_paper_trail](#enable_paper_trail) - Enabling Papertrail

## log_line

This endpoint will write a single-line log message, including a level and source to the main Plex Media Server log.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::LogLineRequest.new(
  level=Operations::Level::THREE,
  message="string",
  source="string",
)
    
res = s.log.log_line(level=Operations::Level::THREE, message="string", source="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                    | Type                                                                                                         | Required                                                                                                     | Description                                                                                                  | Example                                                                                                      |
| ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------ |
| `level`                                                                                                      | [Operations::Level](../../models/operations/level.md)                                                        | :heavy_check_mark:                                                                                           | An integer log level to write to the PMS log with.  <br/>0: Error  <br/>1: Warning  <br/>2: Info <br/>3: Debug  <br/>4: Verbose<br/> |                                                                                                              |
| `message`                                                                                                    | *String*                                                                                                     | :heavy_check_mark:                                                                                           | The text of the message to write to the log.                                                                 |                                                                                                              |
| `source`                                                                                                     | *String*                                                                                                     | :heavy_check_mark:                                                                                           | a string indicating the source of the message.                                                               |                                                                                                              |


### Response

**[T.nilable(Operations::LogLineResponse)](../../models/operations/loglineresponse.md)**


## log_multi_line

This endpoint will write multiple lines to the main Plex Media Server log in a single request. It takes a set of query strings as would normally sent to the above GET endpoint as a linefeed-separated block of POST data. The parameters for each query string match as above.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.log.log_multi_line()

if res.status == 200
  # handle response
end

```


### Response

**[T.nilable(Operations::LogMultiLineResponse)](../../models/operations/logmultilineresponse.md)**


## enable_paper_trail

This endpoint will enable all Plex Media Serverlogs to be sent to the Papertrail networked logging site for a period of time.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.log.enable_paper_trail()

if res.status == 200
  # handle response
end

```


### Response

**[T.nilable(Operations::EnablePaperTrailResponse)](../../models/operations/enablepapertrailresponse.md)**

