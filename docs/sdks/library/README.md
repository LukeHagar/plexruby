# Library


## Overview

API Calls interacting with Plex Media Server Libraries


### Available Operations

* [get_file_hash](#get_file_hash) - Get Hash Value
* [get_recently_added](#get_recently_added) - Get Recently Added
* [get_libraries](#get_libraries) - Get All Libraries
* [get_library](#get_library) - Get Library Details
* [delete_library](#delete_library) - Delete Library Section
* [get_library_items](#get_library_items) - Get Library Items
* [refresh_library](#refresh_library) - Refresh Library
* [get_latest_library_items](#get_latest_library_items) - Get Latest Library Items
* [get_common_library_items](#get_common_library_items) - Get Common Library Items
* [get_metadata](#get_metadata) - Get Items Metadata
* [get_metadata_children](#get_metadata_children) - Get Items Children
* [get_on_deck](#get_on_deck) - Get On Deck

## get_file_hash

This resource returns hash values for local files

### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetFileHashRequest.new(
  url="file://C:\Image.png&type=13",
)
    
res = s.library.get_file_hash(url="file://C:\Image.png&type=13", type=4462.17)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       | Example                                                           |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `url`                                                             | *String*                                                          | :heavy_check_mark:                                                | This is the path to the local file, must be prefixed by `file://` | file://C:\Image.png&type=13                                       |
| `type`                                                            | *Float*                                                           | :heavy_minus_sign:                                                | Item type                                                         |                                                                   |


### Response

**[T.nilable(Operations::GetFileHashResponse)](../../models/operations/getfilehashresponse.md)**


## get_recently_added

This endpoint will return the recently added content.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.get_recently_added()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetRecentlyAddedResponse)](../../models/operations/getrecentlyaddedresponse.md)**


## get_libraries

A library section (commonly referred to as just a library) is a collection of media. 
Libraries are typed, and depending on their type provide either a flat or a hierarchical view of the media. 
For example, a music library has an artist > albums > tracks structure, whereas a movie library is flat.

Libraries have features beyond just being a collection of media; for starters, they include information about supported types, filters and sorts. 
This allows a client to provide a rich interface around the media (e.g. allow sorting movies by release year).


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.get_libraries()

if res.status == 200
  # handle response
end

```


### Response

**[T.nilable(Operations::GetLibrariesResponse)](../../models/operations/getlibrariesresponse.md)**


## get_library

Returns details for the library. This can be thought of as an interstitial endpoint because it contains information about the library, rather than content itself. These details are:

- A list of `Directory` objects: These used to be used by clients to build a menuing system. There are four flavors of directory found here:
  - Primary: (e.g. all, On Deck) These are still used in some clients to provide "shortcuts" to subsets of media. However, with the exception of On Deck, all of them can be created by media queries, and the desire is to allow these to be customized by users.
  - Secondary: These are marked with `secondary="1"` and were used by old clients to provide nested menus allowing for primative (but structured) navigation.
  - Special: There is a By Folder entry which allows browsing the media by the underlying filesystem structure, and there's a completely obsolete entry marked `search="1"` which used to be used to allow clients to build search dialogs on the fly.
- A list of `Type` objects: These represent the types of things found in this library, and for each one, a list of `Filter` and `Sort` objects. These can be used to build rich controls around a grid of media to allow filtering and organizing. Note that these filters and sorts are optional, and without them, the client won't render any filtering controls. The `Type` object contains:
  - `key`: This provides the root endpoint returning the actual media list for the type.
  - `type`: This is the metadata type for the type (if a standard Plex type).
  - `title`: The title for for the content of this type (e.g. "Movies").
- Each `Filter` object contains a description of the filter. Note that it is not an exhaustive list of the full media query language, but an inportant subset useful for top-level API.
  - `filter`: This represents the filter name used for the filter, which can be used to construct complex media queries with.
  - `filterType`: This is either `string`, `integer`, or `boolean`, and describes the type of values used for the filter.
  - `key`: This provides the endpoint where the possible range of values for the filter can be retrieved (e.g. for a "Genre" filter, it returns a list of all the genres in the library). This will include a `type` argument that matches the metadata type of the Type element.
  - `title`: The title for the filter.
- Each `Sort` object contains a description of the sort field.
  - `defaultDirection`: Can be either `asc` or `desc`, and specifies the default direction for the sort field (e.g. titles default to alphabetically ascending).
  - `descKey` and `key`: Contains the parameters passed to the `sort=...` media query for each direction of the sort.
  - `title`: The title of the field.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetLibraryRequest.new(
  section_id=1000,
)
    
res = s.library.get_library(section_id=1000, include_details=Operations::IncludeDetails::ZERO)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                  | Type                                                                                                                                                                                       | Required                                                                                                                                                                                   | Description                                                                                                                                                                                | Example                                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `section_id`                                                                                                                                                                               | *Float*                                                                                                                                                                                    | :heavy_check_mark:                                                                                                                                                                         | the Id of the library to query                                                                                                                                                             | 1000                                                                                                                                                                                       |
| `include_details`                                                                                                                                                                          | [Operations::IncludeDetails](../../models/operations/includedetails.md)                                                                                                                    | :heavy_minus_sign:                                                                                                                                                                         | Whether or not to include details for a section (types, filters, and sorts). <br/>Only exists for backwards compatibility, media providers other than the server libraries have it on always.<br/> |                                                                                                                                                                                            |


### Response

**[T.nilable(Operations::GetLibraryResponse)](../../models/operations/getlibraryresponse.md)**


## delete_library

Delate a library using a specific section

### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::DeleteLibraryRequest.new(
  section_id=1000,
)
    
res = s.library.delete_library(section_id=1000)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                      | Type                           | Required                       | Description                    | Example                        |
| ------------------------------ | ------------------------------ | ------------------------------ | ------------------------------ | ------------------------------ |
| `section_id`                   | *Float*                        | :heavy_check_mark:             | the Id of the library to query | 1000                           |


### Response

**[T.nilable(Operations::DeleteLibraryResponse)](../../models/operations/deletelibraryresponse.md)**


## get_library_items

This endpoint will return a list of library items filtered by the filter and type provided


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetLibraryItemsRequest.new(
  section_id=4510.92,
)
    
res = s.library.get_library_items(section_id=760.66, type=9382.75, filter="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                      | Type                           | Required                       | Description                    |
| ------------------------------ | ------------------------------ | ------------------------------ | ------------------------------ |
| `section_id`                   | *Float*                        | :heavy_check_mark:             | the Id of the library to query |
| `type`                         | *Float*                        | :heavy_minus_sign:             | item type                      |
| `filter`                       | *String*                       | :heavy_minus_sign:             | the filter parameter           |


### Response

**[T.nilable(Operations::GetLibraryItemsResponse)](../../models/operations/getlibraryitemsresponse.md)**


## refresh_library

This endpoint Refreshes the library.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::RefreshLibraryRequest.new(
  section_id=934.16,
)
    
res = s.library.refresh_library(section_id=1769.3)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                        | Type                             | Required                         | Description                      |
| -------------------------------- | -------------------------------- | -------------------------------- | -------------------------------- |
| `section_id`                     | *Float*                          | :heavy_check_mark:               | the Id of the library to refresh |


### Response

**[T.nilable(Operations::RefreshLibraryResponse)](../../models/operations/refreshlibraryresponse.md)**


## get_latest_library_items

This endpoint will return a list of the latest library items filtered by the filter and type provided


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetLatestLibraryItemsRequest.new(
  section_id=7171.54,
  type=8015.12,
)
    
res = s.library.get_latest_library_items(section_id=5399.44, type=5981.61, filter="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                      | Type                           | Required                       | Description                    |
| ------------------------------ | ------------------------------ | ------------------------------ | ------------------------------ |
| `section_id`                   | *Float*                        | :heavy_check_mark:             | the Id of the library to query |
| `type`                         | *Float*                        | :heavy_check_mark:             | item type                      |
| `filter`                       | *String*                       | :heavy_minus_sign:             | the filter parameter           |


### Response

**[T.nilable(Operations::GetLatestLibraryItemsResponse)](../../models/operations/getlatestlibraryitemsresponse.md)**


## get_common_library_items

Represents a "Common" item. It contains only the common attributes of the items selected by the provided filter


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetCommonLibraryItemsRequest.new(
  section_id=2710.37,
  type=2760.31,
)
    
res = s.library.get_common_library_items(section_id=5910.76, type=2604.71, filter="string")

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                      | Type                           | Required                       | Description                    |
| ------------------------------ | ------------------------------ | ------------------------------ | ------------------------------ |
| `section_id`                   | *Float*                        | :heavy_check_mark:             | the Id of the library to query |
| `type`                         | *Float*                        | :heavy_check_mark:             | item type                      |
| `filter`                       | *String*                       | :heavy_minus_sign:             | the filter parameter           |


### Response

**[T.nilable(Operations::GetCommonLibraryItemsResponse)](../../models/operations/getcommonlibraryitemsresponse.md)**


## get_metadata

This endpoint will return the metadata of a library item specified with the ratingKey.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetMetadataRequest.new(
  rating_key=8382.31,
)
    
res = s.library.get_metadata(rating_key=7526.16)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `rating_key`                                          | *Float*                                               | :heavy_check_mark:                                    | the id of the library item to return the children of. |


### Response

**[T.nilable(Operations::GetMetadataResponse)](../../models/operations/getmetadataresponse.md)**


## get_metadata_children

This endpoint will return the children of of a library item specified with the ratingKey.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)


req = Operations::GetMetadataChildrenRequest.new(
  rating_key=1539.14,
)
    
res = s.library.get_metadata_children(rating_key=8449.64)

if res.status == 200
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `rating_key`                                          | *Float*                                               | :heavy_check_mark:                                    | the id of the library item to return the children of. |


### Response

**[T.nilable(Operations::GetMetadataChildrenResponse)](../../models/operations/getmetadatachildrenresponse.md)**


## get_on_deck

This endpoint will return the on deck content.


### Example Usage

```ruby
require_relative plexruby


s = OpenApiSDK::PlexAPI.new
s.config_security(
  security=Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.get_on_deck()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```


### Response

**[T.nilable(Operations::GetOnDeckResponse)](../../models/operations/getondeckresponse.md)**

