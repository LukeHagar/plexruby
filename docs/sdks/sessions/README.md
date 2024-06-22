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


s = ::OpenApiSDK::PlexAPI.new(
      x_plex_client_identifier: "Postman",
    )
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


s = ::OpenApiSDK::PlexAPI.new(
      x_plex_client_identifier: "Postman",
    )
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.sessions.get_session_history(sort="<value>", account_id=1, filter=::OpenApiSDK::Operations::Filter.new(), library_section_id=12)

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                     | Type                                                                                                                                                                                          | Required                                                                                                                                                                                      | Description                                                                                                                                                                                   | Example                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `sort`                                                                                                                                                                                        | *::String*                                                                                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                            | Sorts the results by the specified field followed by the direction (asc, desc)<br/>                                                                                                           |                                                                                                                                                                                               |
| `account_id`                                                                                                                                                                                  | *::Integer*                                                                                                                                                                                   | :heavy_minus_sign:                                                                                                                                                                            | Filter results by those that are related to a specific users id<br/>                                                                                                                          | 1                                                                                                                                                                                             |
| `filter`                                                                                                                                                                                      | [::OpenApiSDK::Operations::Filter](../../models/operations/filter.md)                                                                                                                         | :heavy_minus_sign:                                                                                                                                                                            | Filters content by field and direction/equality<br/>(Unknown if viewedAt is the only supported column)<br/>                                                                                   | {<br/>"viewed-at-greater-than": {<br/>"value": "viewedAt\u003e"<br/>},<br/>"viewed-at-greater-than-or-equal-to": {<br/>"value": "viewedAt\u003e=\u003e"<br/>},<br/>"viewed-at-less-than": {<br/>"value": "viewedAt\u003c"<br/>}<br/>} |
| `library_section_id`                                                                                                                                                                          | *::Integer*                                                                                                                                                                                   | :heavy_minus_sign:                                                                                                                                                                            | Filters the results based on the id of a valid library section<br/>                                                                                                                           | 12                                                                                                                                                                                            |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetSessionHistoryResponse)](../../models/operations/getsessionhistoryresponse.md)**


## get_transcode_sessions

Get Transcode Sessions

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


s = ::OpenApiSDK::PlexAPI.new(
      x_plex_client_identifier: "Postman",
    )
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

