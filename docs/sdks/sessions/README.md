# Sessions


## Overview

API Calls that perform search operations with Plex Media Server Sessions


### Available Operations

* [get_sessions](#get_sessions) - Get Active Sessions
* [get_session_history](#get_session_history) - Get Session History
* [get_transcode_sessions](#get_transcode_sessions) - Get Transcode Sessions
* [stop_transcode_session](#stop_transcode_session) - Stop a Transcode Session

## get_sessions

This will retrieve the "Now Playing" Information of the PMS.

### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.sessions.get_sessions()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::GetSessionsResponse)](../../models/operations/getsessionsresponse.md)**


## get_session_history

This will Retrieve a listing of all history views.

### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.sessions.get_session_history()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::GetSessionHistoryResponse)](../../models/operations/getsessionhistoryresponse.md)**


## get_transcode_sessions

Get Transcode Sessions

### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.sessions.get_transcode_sessions()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```


### Response

**[T.nilable(::OpenApiSDK::Operations::GetTranscodeSessionsResponse)](../../models/operations/gettranscodesessionsresponse.md)**


## stop_transcode_session

Stop a Transcode Session

### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.sessions.stop_transcode_session(session_key="zz7llzqlx8w9vnrsbnwhbmep")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                | Type                                     | Required                                 | Description                              | Example                                  |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| `session_key`                            | *::String*                               | :heavy_check_mark:                       | the Key of the transcode session to stop | zz7llzqlx8w9vnrsbnwhbmep                 |


### Response

**[T.nilable(::OpenApiSDK::Operations::StopTranscodeSessionResponse)](../../models/operations/stoptranscodesessionresponse.md)**

