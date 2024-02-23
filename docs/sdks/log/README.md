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
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.log.log_line(level=::OpenApiSDK::Operations::Level::THREE, message="Test log message", source="Postman")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                     | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   | Example                                                                                                       |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `level`                                                                                                       | [::OpenApiSDK::Operations::Level](../../models/operations/level.md)                                           | :heavy_check_mark:                                                                                            | An integer log level to write to the PMS log with.  <br/>0: Error  <br/>1: Warning  <br/>2: Info  <br/>3: Debug  <br/>4: Verbose<br/> |                                                                                                               |
| `message`                                                                                                     | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | The text of the message to write to the log.                                                                  | Test log message                                                                                              |
| `source`                                                                                                      | *::String*                                                                                                    | :heavy_check_mark:                                                                                            | a string indicating the source of the message.                                                                | Postman                                                                                                       |


### Response

**[T.nilable(::OpenApiSDK::Operations::LogLineResponse)](../../models/operations/loglineresponse.md)**


## log_multi_line

This endpoint allows for the batch addition of log entries to the main Plex Media Server log.  
It accepts a text/plain request body, where each line represents a distinct log entry.  
Each log entry consists of URL-encoded key-value pairs, specifying log attributes such as 'level', 'message', and 'source'.  

Log entries are separated by a newline character (`\n`).  
Each entry's parameters should be URL-encoded to ensure accurate parsing and handling of special characters.  
This method is efficient for logging multiple entries in a single API call, reducing the overhead of multiple individual requests.  

The 'level' parameter specifies the log entry's severity or importance, with the following integer values:
- `0`: Error - Critical issues that require immediate attention.
- `1`: Warning - Important events that are not critical but may indicate potential issues.
- `2`: Info - General informational messages about system operation.
- `3`: Debug - Detailed information useful for debugging purposes.
- `4`: Verbose - Highly detailed diagnostic information for in-depth analysis.

The 'message' parameter contains the log text, and 'source' identifies the log message's origin (e.g., an application name or module).

Example of a single log entry format:
`level=4&message=Sample%20log%20entry&source=applicationName`

Ensure each parameter is properly URL-encoded to avoid interpretation issues.


### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)


req = "level=4&message=Test%20message%201&source=postman
level=3&message=Test%20message%202&source=postman
level=1&message=Test%20message%203&source=postman"
    
res = s.log.log_multi_line(req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                  | Type                                       | Required                                   | Description                                |
| ------------------------------------------ | ------------------------------------------ | ------------------------------------------ | ------------------------------------------ |
| `request`                                  | [::String](../../models//.md)              | :heavy_check_mark:                         | The request object to use for the request. |


### Response

**[T.nilable(::OpenApiSDK::Operations::LogMultiLineResponse)](../../models/operations/logmultilineresponse.md)**


## enable_paper_trail

This endpoint will enable all Plex Media Serverlogs to be sent to the Papertrail networked logging site for a period of time.


### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.log.enable_paper_trail()

if res.status_code == 200
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::EnablePaperTrailResponse)](../../models/operations/enablepapertrailresponse.md)**

