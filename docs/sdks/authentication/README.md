# Authentication
(*authentication*)

## Overview

API Calls regarding authentication for Plex Media Server


### Available Operations

* [get_transient_token](#get_transient_token) - Get a Transient Token
* [get_source_connection_information](#get_source_connection_information) - Get Source Connection Information
* [get_token_details](#get_token_details) - Get Token Details
* [post_users_sign_in_data](#post_users_sign_in_data) - Get User Sign In Data

## get_transient_token

This endpoint provides the caller with a temporary token with the same access level as the caller's token. These tokens are valid for up to 48 hours and are destroyed if the server instance is restarted.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.authentication.get_transient_token(type=::PlexRubySDK::Operations::GetTransientTokenQueryParamType::DELEGATION, scope=::PlexRubySDK::Operations::Scope::ALL)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                | Type                                                                                                                     | Required                                                                                                                 | Description                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------ |
| `type`                                                                                                                   | [::PlexRubySDK::Operations::GetTransientTokenQueryParamType](../../models/operations/gettransienttokenqueryparamtype.md) | :heavy_check_mark:                                                                                                       | `delegation` - This is the only supported `type` parameter.                                                              |
| `scope`                                                                                                                  | [::PlexRubySDK::Operations::Scope](../../models/operations/scope.md)                                                     | :heavy_check_mark:                                                                                                       | `all` - This is the only supported `scope` parameter.                                                                    |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetTransientTokenResponse)](../../models/operations/gettransienttokenresponse.md)**



## get_source_connection_information

If a caller requires connection details and a transient token for a source that is known to the server, for example a cloud media provider or shared PMS, then this endpoint can be called. This endpoint is only accessible with either an admin token or a valid transient token generated from an admin token.
Note: requires Plex Media Server >= 1.15.4.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.authentication.get_source_connection_information(source="server://client-identifier")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                      | Type                                           | Required                                       | Description                                    | Example                                        |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| `source`                                       | *::String*                                     | :heavy_check_mark:                             | The source identifier with an included prefix. | server://client-identifier                     |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetSourceConnectionInformationResponse)](../../models/operations/getsourceconnectioninformationresponse.md)**



## get_token_details

Get the User data from the provided X-Plex-Token

### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.authentication.get_token_details()

if ! res.user_plex_account.nil?
  # handle response
end

```

### Parameters

| Parameter                      | Type                           | Required                       | Description                    |
| ------------------------------ | ------------------------------ | ------------------------------ | ------------------------------ |
| `server_url`                   | *String*                       | :heavy_minus_sign:             | An optional server URL to use. |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetTokenDetailsResponse)](../../models/operations/gettokendetailsresponse.md)**



## post_users_sign_in_data

Sign in user with username and password and return user data with Plex authentication token

### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new


req = ::PlexRubySDK::Operations::PostUsersSignInDataRequest.new(
  client_id: "3381b62b-9ab7-4e37-827b-203e9809eb58",
  client_name: "Plex for Roku",
  device_nickname: "Roku 3",
  client_version: "2.4.1",
  platform: "Roku",
  request_body: ::PlexRubySDK::Operations::PostUsersSignInDataRequestBody.new(
    login: "username@email.com",
    password: "password123",
    verification_code: "123456",
  ),
)
    
res = s.authentication.post_users_sign_in_data(req)

if ! res.user_plex_account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                      | Type                                                                                                           | Required                                                                                                       | Description                                                                                                    |
| -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                      | [::PlexRubySDK::Operations::PostUsersSignInDataRequest](../../models/operations/postuserssignindatarequest.md) | :heavy_check_mark:                                                                                             | The request object to use for the request.                                                                     |
| `server_url`                                                                                                   | *String*                                                                                                       | :heavy_minus_sign:                                                                                             | An optional server URL to use.                                                                                 |

### Response

**[T.nilable(::PlexRubySDK::Operations::PostUsersSignInDataResponse)](../../models/operations/postuserssignindataresponse.md)**

