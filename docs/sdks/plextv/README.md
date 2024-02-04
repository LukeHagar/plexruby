# PlexTv


### Available Operations

* [get_pin](#get_pin) - Get a Pin
* [get_token](#get_token) - Get Access Token

## get_pin

Retrieve a Pin from Plex.tv for authentication flows

### Example Usage

```ruby
require_relative plexruby


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.plex_tv.get_pin(x_plex_client_identifier="string", strong=false)

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                             | Type                                                                                                                                                  | Required                                                                                                                                              | Description                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `x_plex_client_identifier`                                                                                                                            | *String*                                                                                                                                              | :heavy_check_mark:                                                                                                                                    | Plex Authentication Token                                                                                                                             |
| `strong`                                                                                                                                              | *T::Boolean*                                                                                                                                          | :heavy_minus_sign:                                                                                                                                    | Determines the kind of code returned by the API call<br/>Strong codes are used for Pin authentication flows<br/>Non-Strong codes are used for `Plex.tv/link`<br/> |
| `server_url`                                                                                                                                          | *String*                                                                                                                                              | :heavy_minus_sign:                                                                                                                                    | An optional server URL to use.                                                                                                                        |


### Response

**[T.nilable(Operations::GetPinResponse)](../../models/operations/getpinresponse.md)**


## get_token

Retrieve an Access Token from Plex.tv after the Pin has already been authenticated

### Example Usage

```ruby
require_relative plexruby


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.plex_tv.get_token(pin_id="string", x_plex_client_identifier="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                 | Type                                      | Required                                  | Description                               |
| ----------------------------------------- | ----------------------------------------- | ----------------------------------------- | ----------------------------------------- |
| `pin_id`                                  | *String*                                  | :heavy_check_mark:                        | The PinID to retrieve an access token for |
| `x_plex_client_identifier`                | *String*                                  | :heavy_check_mark:                        | Plex Authentication Token                 |
| `server_url`                              | *String*                                  | :heavy_minus_sign:                        | An optional server URL to use.            |


### Response

**[T.nilable(Operations::GetTokenResponse)](../../models/operations/gettokenresponse.md)**

