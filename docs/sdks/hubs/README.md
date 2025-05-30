# Hubs
(*hubs*)

## Overview

Hubs are a structured two-dimensional container for media, generally represented by multiple horizontal rows.


### Available Operations

* [get_global_hubs](#get_global_hubs) - Get Global Hubs
* [get_recently_added](#get_recently_added) - Get Recently Added
* [get_library_hubs](#get_library_hubs) - Get library specific hubs

## get_global_hubs

Get Global Hubs filtered by the parameters provided.

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.hubs.get_global_hubs(count=1262.49, only_transient=Models::Operations::OnlyTransient::ONE)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                             | Type                                                                                                                                                  | Required                                                                                                                                              | Description                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `count`                                                                                                                                               | *T.nilable(::Float)*                                                                                                                                  | :heavy_minus_sign:                                                                                                                                    | The number of items to return with each hub.                                                                                                          |
| `only_transient`                                                                                                                                      | [T.nilable(Models::Operations::OnlyTransient)](../../models/operations/onlytransient.md)                                                              | :heavy_minus_sign:                                                                                                                                    | Only return hubs which are "transient", meaning those which are prone to changing after media playback or addition (e.g. On Deck, or Recently Added). |

### Response

**[T.nilable(Models::Operations::GetGlobalHubsResponse)](../../models/operations/getglobalhubsresponse.md)**



## get_recently_added

This endpoint will return the recently added content.


### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::GetRecentlyAddedRequest.new(
  content_directory_id: 470_161,
  section_id: 2,
  type: Models::Operations::Type::TV_SHOW,
  include_meta: Models::Operations::IncludeMeta::ENABLE,
  x_plex_container_start: 0,
  x_plex_container_size: 50,
)

res = s.hubs.get_recently_added(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::GetRecentlyAddedRequest](../../models/operations/getrecentlyaddedrequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::GetRecentlyAddedResponse)](../../models/operations/getrecentlyaddedresponse.md)**



## get_library_hubs

This endpoint will return a list of library specific hubs


### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.hubs.get_library_hubs(section_id=6728.76, count=639.24, only_transient=Models::Operations::QueryParamOnlyTransient::ONE)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                             | Type                                                                                                                                                  | Required                                                                                                                                              | Description                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `section_id`                                                                                                                                          | *::Float*                                                                                                                                             | :heavy_check_mark:                                                                                                                                    | the Id of the library to query                                                                                                                        |
| `count`                                                                                                                                               | *T.nilable(::Float)*                                                                                                                                  | :heavy_minus_sign:                                                                                                                                    | The number of items to return with each hub.                                                                                                          |
| `only_transient`                                                                                                                                      | [T.nilable(Models::Operations::QueryParamOnlyTransient)](../../models/operations/queryparamonlytransient.md)                                          | :heavy_minus_sign:                                                                                                                                    | Only return hubs which are "transient", meaning those which are prone to changing after media playback or addition (e.g. On Deck, or Recently Added). |

### Response

**[T.nilable(Models::Operations::GetLibraryHubsResponse)](../../models/operations/getlibraryhubsresponse.md)**

