# Security


## Overview

API Calls against Security for Plex Media Server


### Available Operations

* [get_transient_token](#get_transient_token) - Get a Transient Token.
* [get_source_connection_information](#get_source_connection_information) - Get Source Connection Information

## get_transient_token

This endpoint provides the caller with a temporary token with the same access level as the caller's token. These tokens are valid for up to 48 hours and are destroyed if the server instance is restarted.


### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.security.get_transient_token(type=::OpenApiSDK::Operations::GetTransientTokenQueryParamType::DELEGATION, scope=::OpenApiSDK::Operations::Scope::ALL)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                               | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `type`                                                                                                                  | [::OpenApiSDK::Operations::GetTransientTokenQueryParamType](../../models/operations/gettransienttokenqueryparamtype.md) | :heavy_check_mark:                                                                                                      | `delegation` - This is the only supported `type` parameter.                                                             |
| `scope`                                                                                                                 | [::OpenApiSDK::Operations::Scope](../../models/operations/scope.md)                                                     | :heavy_check_mark:                                                                                                      | `all` - This is the only supported `scope` parameter.                                                                   |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetTransientTokenResponse)](../../models/operations/gettransienttokenresponse.md)**


## get_source_connection_information

If a caller requires connection details and a transient token for a source that is known to the server, for example a cloud media provider or shared PMS, then this endpoint can be called. This endpoint is only accessible with either an admin token or a valid transient token generated from an admin token.
Note: requires Plex Media Server >= 1.15.4.


### Example Usage

```ruby
require 'plexruby'


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.security.get_source_connection_information(source="server://client-identifier")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                      | Type                                           | Required                                       | Description                                    | Example                                        |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| `source`                                       | *::String*                                     | :heavy_check_mark:                             | The source identifier with an included prefix. | server://client-identifier                     |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetSourceConnectionInformationResponse)](../../models/operations/getsourceconnectioninformationresponse.md)**

