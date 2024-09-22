# Library

## Overview

API Calls interacting with Plex Media Server Libraries


### Available Operations

* [get_file_hash](#get_file_hash) - Get Hash Value
* [get_recently_added](#get_recently_added) - Get Recently Added
* [get_all_libraries](#get_all_libraries) - Get All Libraries
* [get_library_details](#get_library_details) - Get Library Details
* [delete_library](#delete_library) - Delete Library Section
* [get_library_items](#get_library_items) - Get Library Items
* [get_refresh_library_metadata](#get_refresh_library_metadata) - Refresh Metadata Of The Library
* [get_search_library](#get_search_library) - Search Library
* [get_meta_data_by_rating_key](#get_meta_data_by_rating_key) - Get Metadata by RatingKey
* [get_metadata_children](#get_metadata_children) - Get Items Children
* [get_top_watched_content](#get_top_watched_content) - Get Top Watched Content
* [get_on_deck](#get_on_deck) - Get On Deck

## get_file_hash

This resource returns hash values for local files

### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.get_file_hash(url="file://C:\Image.png&type=13", type=4462.17)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       | Example                                                           |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `url`                                                             | *::String*                                                        | :heavy_check_mark:                                                | This is the path to the local file, must be prefixed by `file://` | file://C:\Image.png&type=13                                       |
| `type`                                                            | *::Float*                                                         | :heavy_minus_sign:                                                | Item type                                                         |                                                                   |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetFileHashResponse)](../../models/operations/getfilehashresponse.md)**




## get_recently_added

This endpoint will return the recently added content.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.get_recently_added(x_plex_container_start=0, x_plex_container_size=50)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                 | Type                                                                                                                                                                                      | Required                                                                                                                                                                                  | Description                                                                                                                                                                               | Example                                                                                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `x_plex_container_start`                                                                                                                                                                  | *::Integer*                                                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                                        | The index of the first item to return. If not specified, the first item will be returned.<br/>If the number of items exceeds the limit, the response will be paginated.<br/>By default this is 0<br/> | 0                                                                                                                                                                                         |
| `x_plex_container_size`                                                                                                                                                                   | *::Integer*                                                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                                        | The number of items to return. If not specified, all items will be returned.<br/>If the number of items exceeds the limit, the response will be paginated.<br/>By default this is 50<br/> | 50                                                                                                                                                                                        |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetRecentlyAddedResponse)](../../models/operations/getrecentlyaddedresponse.md)**




## get_all_libraries

A library section (commonly referred to as just a library) is a collection of media. 
Libraries are typed, and depending on their type provide either a flat or a hierarchical view of the media. 
For example, a music library has an artist > albums > tracks structure, whereas a movie library is flat.

Libraries have features beyond just being a collection of media; for starters, they include information about supported types, filters and sorts. 
This allows a client to provide a rich interface around the media (e.g. allow sorting movies by release year).


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.get_all_libraries()

if ! res.object.nil?
  # handle response
end

```

### Response

**[T.nilable(::PlexRubySDK::Operations::GetAllLibrariesResponse)](../../models/operations/getalllibrariesresponse.md)**




## get_library_details

## Library Details Endpoint

This endpoint provides comprehensive details about the library, focusing on organizational aspects rather than the content itself.   

The details include:

### Directories
Organized into three categories:

- **Primary Directories**: 
  - Used in some clients for quick access to media subsets (e.g., "All", "On Deck").
  - Most can be replicated via media queries.
  - Customizable by users.

- **Secondary Directories**:
  - Marked with `secondary="1"`.
  - Used in older clients for structured navigation.

- **Special Directories**:
  - Includes a "By Folder" entry for filesystem-based browsing.
  - Contains an obsolete `search="1"` entry for on-the-fly search dialog creation.

### Types
Each type in the library comes with a set of filters and sorts, aiding in building dynamic media controls:

- **Type Object Attributes**:
  - `key`: Endpoint for the media list of this type.
  - `type`: Metadata type (if standard Plex type).
  - `title`: Title for this content type (e.g., "Movies").

- **Filter Objects**:
  - Subset of the media query language.
  - Attributes include `filter` (name), `filterType` (data type), `key` (endpoint for value range), and `title`.

- **Sort Objects**:
  - Description of sort fields.
  - Attributes include `defaultDirection` (asc/desc), `descKey` and `key` (sort parameters), and `title`.

> **Note**: Filters and sorts are optional; without them, no filtering controls are rendered.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.get_library_details(section_key=9518, include_details=::PlexRubySDK::Operations::IncludeDetails::ZERO)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                  | Type                                                                                                                                                                                       | Required                                                                                                                                                                                   | Description                                                                                                                                                                                | Example                                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `section_key`                                                                                                                                                                              | *::Integer*                                                                                                                                                                                | :heavy_check_mark:                                                                                                                                                                         | The unique key of the Plex library. <br/>Note: This is unique in the context of the Plex server.<br/>                                                                                      | 9518                                                                                                                                                                                       |
| `include_details`                                                                                                                                                                          | [::PlexRubySDK::Operations::IncludeDetails](../../models/operations/includedetails.md)                                                                                                     | :heavy_minus_sign:                                                                                                                                                                         | Whether or not to include details for a section (types, filters, and sorts). <br/>Only exists for backwards compatibility, media providers other than the server libraries have it on always.<br/> |                                                                                                                                                                                            |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetLibraryDetailsResponse)](../../models/operations/getlibrarydetailsresponse.md)**




## delete_library

Delete a library using a specific section id

### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.delete_library(section_key=9518)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `section_key`                                                                                 | *::Integer*                                                                                   | :heavy_check_mark:                                                                            | The unique key of the Plex library. <br/>Note: This is unique in the context of the Plex server.<br/> | 9518                                                                                          |

### Response

**[T.nilable(::PlexRubySDK::Operations::DeleteLibraryResponse)](../../models/operations/deletelibraryresponse.md)**




## get_library_items

Fetches details from a specific section of the library identified by a section key and a tag. The tag parameter accepts the following values:
- `all`: All items in the section.
- `unwatched`: Items that have not been played.
- `newest`: Items that are recently released.
- `recentlyAdded`: Items that are recently added to the library.
- `recentlyViewed`: Items that were recently viewed.
- `onDeck`: Items to continue watching.
- `collection`: Items categorized by collection.
- `edition`: Items categorized by edition.
- `genre`: Items categorized by genre.
- `year`: Items categorized by year of release.
- `decade`: Items categorized by decade.
- `director`: Items categorized by director.
- `actor`: Items categorized by starring actor.
- `country`: Items categorized by country of origin.
- `contentRating`: Items categorized by content rating.
- `rating`: Items categorized by rating.
- `resolution`: Items categorized by resolution.
- `firstCharacter`: Items categorized by the first letter.
- `folder`: Items categorized by folder.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)


req = ::PlexRubySDK::Operations::GetLibraryItemsRequest.new(
  section_key: 9518,
  tag: ::PlexRubySDK::Operations::Tag::EDITION,
  include_guids: ::PlexRubySDK::Operations::IncludeGuids::ENABLE,
  include_meta: ::PlexRubySDK::Operations::IncludeMeta::ENABLE,
  type: ::PlexRubySDK::Operations::Type::TV_SHOW,
  x_plex_container_start: 0,
  x_plex_container_size: 50,
)
    
res = s.library.get_library_items(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                              | Type                                                                                                   | Required                                                                                               | Description                                                                                            |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| `request`                                                                                              | [::PlexRubySDK::Operations::GetLibraryItemsRequest](../../models/operations/getlibraryitemsrequest.md) | :heavy_check_mark:                                                                                     | The request object to use for the request.                                                             |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetLibraryItemsResponse)](../../models/operations/getlibraryitemsresponse.md)**




## get_refresh_library_metadata

This endpoint Refreshes all the Metadata of the library.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.get_refresh_library_metadata(section_key=9518, force=::PlexRubySDK::Operations::Force::ONE)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `section_key`                                                                                 | *::Integer*                                                                                   | :heavy_check_mark:                                                                            | The unique key of the Plex library. <br/>Note: This is unique in the context of the Plex server.<br/> | 9518                                                                                          |
| `force`                                                                                       | [::PlexRubySDK::Operations::Force](../../models/operations/force.md)                          | :heavy_minus_sign:                                                                            | Force the refresh even if the library is already being refreshed.                             | 0                                                                                             |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetRefreshLibraryMetadataResponse)](../../models/operations/getrefreshlibrarymetadataresponse.md)**




## get_search_library

Search for content within a specific section of the library.

### Types
Each type in the library comes with a set of filters and sorts, aiding in building dynamic media controls:

- **Type Object Attributes**:
  - `type`: Metadata type (if standard Plex type).  
  - `title`: Title for this content type (e.g., "Movies").

- **Filter Objects**:
  - Subset of the media query language.
  - Attributes include `filter` (name), `filterType` (data type), `key` (endpoint for value range), and `title`.

- **Sort Objects**:
  - Description of sort fields.
  - Attributes include `defaultDirection` (asc/desc), `descKey` and `key` (sort parameters), and `title`.

> **Note**: Filters and sorts are optional; without them, no filtering controls are rendered.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.get_search_library(section_key=9518, type=::PlexRubySDK::Operations::QueryParamType::TV_SHOW)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                       | Type                                                                                                                                                                            | Required                                                                                                                                                                        | Description                                                                                                                                                                     | Example                                                                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `section_key`                                                                                                                                                                   | *::Integer*                                                                                                                                                                     | :heavy_check_mark:                                                                                                                                                              | The unique key of the Plex library. <br/>Note: This is unique in the context of the Plex server.<br/>                                                                           | 9518                                                                                                                                                                            |
| `type`                                                                                                                                                                          | [::PlexRubySDK::Operations::QueryParamType](../../models/operations/queryparamtype.md)                                                                                          | :heavy_check_mark:                                                                                                                                                              | The type of media to retrieve.<br/>1 = movie<br/>2 = show<br/>3 = season<br/>4 = episode<br/>E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries<br/> | 2                                                                                                                                                                               |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetSearchLibraryResponse)](../../models/operations/getsearchlibraryresponse.md)**




## get_meta_data_by_rating_key

This endpoint will return the metadata of a library item specified with the ratingKey.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.get_meta_data_by_rating_key(rating_key=9518)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                             | Type                                                  | Required                                              | Description                                           | Example                                               |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `rating_key`                                          | *::Integer*                                           | :heavy_check_mark:                                    | the id of the library item to return the children of. | 9518                                                  |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetMetaDataByRatingKeyResponse)](../../models/operations/getmetadatabyratingkeyresponse.md)**




## get_metadata_children

This endpoint will return the children of of a library item specified with the ratingKey.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.get_metadata_children(rating_key=1539.15, include_elements="<value>")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `rating_key`                                                            | *::Float*                                                               | :heavy_check_mark:                                                      | the id of the library item to return the children of.                   |
| `include_elements`                                                      | *::String*                                                              | :heavy_minus_sign:                                                      | Adds additional elements to the response. Supported types are (Stream)<br/> |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetMetadataChildrenResponse)](../../models/operations/getmetadatachildrenresponse.md)**




## get_top_watched_content

This endpoint will return the top watched content from libraries of a certain type


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.get_top_watched_content(type=::PlexRubySDK::Operations::GetTopWatchedContentQueryParamType::TV_SHOW, include_guids=1)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                       | Type                                                                                                                                                                            | Required                                                                                                                                                                        | Description                                                                                                                                                                     | Example                                                                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `type`                                                                                                                                                                          | [::PlexRubySDK::Operations::GetTopWatchedContentQueryParamType](../../models/operations/gettopwatchedcontentqueryparamtype.md)                                                  | :heavy_check_mark:                                                                                                                                                              | The type of media to retrieve.<br/>1 = movie<br/>2 = show<br/>3 = season<br/>4 = episode<br/>E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries<br/> | 2                                                                                                                                                                               |
| `include_guids`                                                                                                                                                                 | *::Integer*                                                                                                                                                                     | :heavy_minus_sign:                                                                                                                                                              | Adds the Guids object to the response<br/>                                                                                                                                      | 1                                                                                                                                                                               |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetTopWatchedContentResponse)](../../models/operations/gettopwatchedcontentresponse.md)**




## get_on_deck

This endpoint will return the on deck content.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "gcgzw5rz2xovp84b4vha3a40",
      client_name: "Plex Web",
      client_version: "4.133.0",
      client_platform: "Chrome",
      device_name: "Linux",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.library.get_on_deck()

if ! res.object.nil?
  # handle response
end

```

### Response

**[T.nilable(::PlexRubySDK::Operations::GetOnDeckResponse)](../../models/operations/getondeckresponse.md)**


