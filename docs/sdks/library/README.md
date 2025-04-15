# Library
(*library*)

## Overview

API Calls interacting with Plex Media Server Libraries


### Available Operations

* [get_file_hash](#get_file_hash) - Get Hash Value
* [get_recently_added_library](#get_recently_added_library) - Get Recently Added
* [get_all_libraries](#get_all_libraries) - Get All Libraries
* [get_library_details](#get_library_details) - Get Library Details
* [delete_library](#delete_library) - Delete Library Section
* [get_library_items](#get_library_items) - Get Library Items
* [get_all_media_library](#get_all_media_library) - Get all media of library
* [get_refresh_library_metadata](#get_refresh_library_metadata) - Refresh Metadata Of The Library
* [get_search_library](#get_search_library) - Search Library
* [get_genres_library](#get_genres_library) - Get Genres of library media
* [get_countries_library](#get_countries_library) - Get Countries of library media
* [get_actors_library](#get_actors_library) - Get Actors of library media
* [get_search_all_libraries](#get_search_all_libraries) - Search All Libraries
* [get_media_meta_data](#get_media_meta_data) - Get Media Metadata
* [get_media_arts](#get_media_arts) - Get Media Background Artwork
* [post_media_arts](#post_media_arts) - Upload Media Background Artwork
* [get_media_posters](#get_media_posters) - Get Media Posters
* [post_media_poster](#post_media_poster) - Upload Media Poster
* [get_metadata_children](#get_metadata_children) - Get Items Children
* [get_top_watched_content](#get_top_watched_content) - Get Top Watched Content

## get_file_hash

This resource returns hash values for local files

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
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
| `type`                                                            | *T.nilable(::Float)*                                              | :heavy_minus_sign:                                                | Item type                                                         |                                                                   |

### Response

**[T.nilable(Models::Operations::GetFileHashResponse)](../../models/operations/getfilehashresponse.md)**



## get_recently_added_library

This endpoint will return the recently added content.


### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::GetRecentlyAddedLibraryRequest.new(
  content_directory_id: 2,
  pinned_content_directory_id: [
    3,
    5,
    7,
    13,
    12,
    1,
    6,
    14,
    2,
    10,
    16,
    17,
  ],
  section_id: 2,
  type: Models::Operations::QueryParamType::TV_SHOW,
  include_meta: Models::Operations::QueryParamIncludeMeta::ENABLE,
  x_plex_container_start: 0,
  x_plex_container_size: 50,
)

res = s.library.get_recently_added_library(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                       | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                       | [Models::Operations::GetRecentlyAddedLibraryRequest](../../models/operations/getrecentlyaddedlibraryrequest.md) | :heavy_check_mark:                                                                                              | The request object to use for the request.                                                                      |

### Response

**[T.nilable(Models::Operations::GetRecentlyAddedLibraryResponse)](../../models/operations/getrecentlyaddedlibraryresponse.md)**



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
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.library.get_all_libraries()

if ! res.object.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GetAllLibrariesResponse)](../../models/operations/getalllibrariesresponse.md)**



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
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.library.get_library_details(section_key=9518, include_details=Models::Operations::IncludeDetails::ZERO)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                  | Type                                                                                                                                                                                       | Required                                                                                                                                                                                   | Description                                                                                                                                                                                | Example                                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `section_key`                                                                                                                                                                              | *::Integer*                                                                                                                                                                                | :heavy_check_mark:                                                                                                                                                                         | The unique key of the Plex library. <br/>Note: This is unique in the context of the Plex server.<br/>                                                                                      | 9518                                                                                                                                                                                       |
| `include_details`                                                                                                                                                                          | [T.nilable(Models::Operations::IncludeDetails)](../../models/operations/includedetails.md)                                                                                                 | :heavy_minus_sign:                                                                                                                                                                         | Whether or not to include details for a section (types, filters, and sorts). <br/>Only exists for backwards compatibility, media providers other than the server libraries have it on always.<br/> |                                                                                                                                                                                            |

### Response

**[T.nilable(Models::Operations::GetLibraryDetailsResponse)](../../models/operations/getlibrarydetailsresponse.md)**



## delete_library

Delete a library using a specific section id

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
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

**[T.nilable(Models::Operations::DeleteLibraryResponse)](../../models/operations/deletelibraryresponse.md)**



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
- `albums`: Items categorized by album.


### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::GetLibraryItemsRequest.new(
  tag: Models::Operations::Tag::EDITION,
  include_guids: Models::Operations::IncludeGuids::ENABLE,
  type: Models::Operations::GetLibraryItemsQueryParamType::TV_SHOW,
  section_key: 9518,
  include_meta: Models::Operations::GetLibraryItemsQueryParamIncludeMeta::ENABLE,
  x_plex_container_start: 0,
  x_plex_container_size: 50,
)

res = s.library.get_library_items(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                       | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `request`                                                                                       | [Models::Operations::GetLibraryItemsRequest](../../models/operations/getlibraryitemsrequest.md) | :heavy_check_mark:                                                                              | The request object to use for the request.                                                      |

### Response

**[T.nilable(Models::Operations::GetLibraryItemsResponse)](../../models/operations/getlibraryitemsresponse.md)**



## get_all_media_library

Retrieves a list of all general media data for this library.


### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::GetAllMediaLibraryRequest.new(
  section_key: 9518,
  type: Models::Operations::GetAllMediaLibraryQueryParamType::TV_SHOW,
  include_meta: Models::Operations::GetAllMediaLibraryQueryParamIncludeMeta::ENABLE,
  include_guids: Models::Operations::QueryParamIncludeGuids::ENABLE,
  include_advanced: Models::Operations::IncludeAdvanced::ENABLE,
  include_collections: Models::Operations::QueryParamIncludeCollections::ENABLE,
  include_external_media: Models::Operations::QueryParamIncludeExternalMedia::ENABLE,
  x_plex_container_start: 0,
  x_plex_container_size: 50,
)

res = s.library.get_all_media_library(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                             | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `request`                                                                                             | [Models::Operations::GetAllMediaLibraryRequest](../../models/operations/getallmedialibraryrequest.md) | :heavy_check_mark:                                                                                    | The request object to use for the request.                                                            |

### Response

**[T.nilable(Models::Operations::GetAllMediaLibraryResponse)](../../models/operations/getallmedialibraryresponse.md)**



## get_refresh_library_metadata

This endpoint Refreshes all the Metadata of the library.


### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.library.get_refresh_library_metadata(section_key=9518, force=Models::Operations::Force::ONE)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   | Example                                                                                       |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `section_key`                                                                                 | *::Integer*                                                                                   | :heavy_check_mark:                                                                            | The unique key of the Plex library. <br/>Note: This is unique in the context of the Plex server.<br/> | 9518                                                                                          |
| `force`                                                                                       | [T.nilable(Models::Operations::Force)](../../models/operations/force.md)                      | :heavy_minus_sign:                                                                            | Force the refresh even if the library is already being refreshed.                             | 0                                                                                             |

### Response

**[T.nilable(Models::Operations::GetRefreshLibraryMetadataResponse)](../../models/operations/getrefreshlibrarymetadataresponse.md)**



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
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.library.get_search_library(section_key=9518, type=Models::Operations::GetSearchLibraryQueryParamType::TV_SHOW)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                    | Type                                                                                                                                                                                         | Required                                                                                                                                                                                     | Description                                                                                                                                                                                  | Example                                                                                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `section_key`                                                                                                                                                                                | *::Integer*                                                                                                                                                                                  | :heavy_check_mark:                                                                                                                                                                           | The unique key of the Plex library. <br/>Note: This is unique in the context of the Plex server.<br/>                                                                                        | 9518                                                                                                                                                                                         |
| `type`                                                                                                                                                                                       | [Models::Operations::GetSearchLibraryQueryParamType](../../models/operations/getsearchlibraryqueryparamtype.md)                                                                              | :heavy_check_mark:                                                                                                                                                                           | The type of media to retrieve or filter by.<br/>1 = movie<br/>2 = show<br/>3 = season<br/>4 = episode<br/>E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries<br/> | 2                                                                                                                                                                                            |

### Response

**[T.nilable(Models::Operations::GetSearchLibraryResponse)](../../models/operations/getsearchlibraryresponse.md)**



## get_genres_library

Retrieves a list of all the genres that are found for the media in this library.


### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.library.get_genres_library(section_key=9518, type=Models::Operations::GetGenresLibraryQueryParamType::TV_SHOW)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                    | Type                                                                                                                                                                                         | Required                                                                                                                                                                                     | Description                                                                                                                                                                                  | Example                                                                                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `section_key`                                                                                                                                                                                | *::Integer*                                                                                                                                                                                  | :heavy_check_mark:                                                                                                                                                                           | The unique key of the Plex library. <br/>Note: This is unique in the context of the Plex server.<br/>                                                                                        | 9518                                                                                                                                                                                         |
| `type`                                                                                                                                                                                       | [Models::Operations::GetGenresLibraryQueryParamType](../../models/operations/getgenreslibraryqueryparamtype.md)                                                                              | :heavy_check_mark:                                                                                                                                                                           | The type of media to retrieve or filter by.<br/>1 = movie<br/>2 = show<br/>3 = season<br/>4 = episode<br/>E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries<br/> | 2                                                                                                                                                                                            |

### Response

**[T.nilable(Models::Operations::GetGenresLibraryResponse)](../../models/operations/getgenreslibraryresponse.md)**



## get_countries_library

Retrieves a list of all the countries that are found for the media in this library.


### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.library.get_countries_library(section_key=9518, type=Models::Operations::GetCountriesLibraryQueryParamType::TV_SHOW)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                    | Type                                                                                                                                                                                         | Required                                                                                                                                                                                     | Description                                                                                                                                                                                  | Example                                                                                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `section_key`                                                                                                                                                                                | *::Integer*                                                                                                                                                                                  | :heavy_check_mark:                                                                                                                                                                           | The unique key of the Plex library. <br/>Note: This is unique in the context of the Plex server.<br/>                                                                                        | 9518                                                                                                                                                                                         |
| `type`                                                                                                                                                                                       | [Models::Operations::GetCountriesLibraryQueryParamType](../../models/operations/getcountrieslibraryqueryparamtype.md)                                                                        | :heavy_check_mark:                                                                                                                                                                           | The type of media to retrieve or filter by.<br/>1 = movie<br/>2 = show<br/>3 = season<br/>4 = episode<br/>E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries<br/> | 2                                                                                                                                                                                            |

### Response

**[T.nilable(Models::Operations::GetCountriesLibraryResponse)](../../models/operations/getcountrieslibraryresponse.md)**



## get_actors_library

Retrieves a list of all the actors that are found for the media in this library.


### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.library.get_actors_library(section_key=9518, type=Models::Operations::GetActorsLibraryQueryParamType::TV_SHOW)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                    | Type                                                                                                                                                                                         | Required                                                                                                                                                                                     | Description                                                                                                                                                                                  | Example                                                                                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `section_key`                                                                                                                                                                                | *::Integer*                                                                                                                                                                                  | :heavy_check_mark:                                                                                                                                                                           | The unique key of the Plex library. <br/>Note: This is unique in the context of the Plex server.<br/>                                                                                        | 9518                                                                                                                                                                                         |
| `type`                                                                                                                                                                                       | [Models::Operations::GetActorsLibraryQueryParamType](../../models/operations/getactorslibraryqueryparamtype.md)                                                                              | :heavy_check_mark:                                                                                                                                                                           | The type of media to retrieve or filter by.<br/>1 = movie<br/>2 = show<br/>3 = season<br/>4 = episode<br/>E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries<br/> | 2                                                                                                                                                                                            |

### Response

**[T.nilable(Models::Operations::GetActorsLibraryResponse)](../../models/operations/getactorslibraryresponse.md)**



## get_search_all_libraries

Search the provided query across all library sections, or a single section, and return matches as hubs, split up by type.


### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::GetSearchAllLibrariesRequest.new(
  query: "<value>",
  client_id: "3381b62b-9ab7-4e37-827b-203e9809eb58",
  search_types: [
    Models::Operations::SearchTypes::PEOPLE,
  ],
  include_collections: Models::Operations::GetSearchAllLibrariesQueryParamIncludeCollections::ENABLE,
  include_external_media: Models::Operations::GetSearchAllLibrariesQueryParamIncludeExternalMedia::ENABLE,
)

res = s.library.get_search_all_libraries(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                   | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                   | [Models::Operations::GetSearchAllLibrariesRequest](../../models/operations/getsearchalllibrariesrequest.md) | :heavy_check_mark:                                                                                          | The request object to use for the request.                                                                  |

### Response

**[T.nilable(Models::Operations::GetSearchAllLibrariesResponse)](../../models/operations/getsearchalllibrariesresponse.md)**



## get_media_meta_data

This endpoint will return all the (meta)data of a library item specified with by the ratingKey.


### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

req = Models::Operations::GetMediaMetaDataRequest.new(
  rating_key: 9518,
  include_concerts: true,
  include_extras: true,
  include_on_deck: true,
  include_popular_leaves: true,
  include_preferences: true,
  include_reviews: true,
  include_chapters: true,
  include_stations: true,
  include_external_media: true,
  async_augment_metadata: true,
  async_check_files: true,
  async_refresh_analysis: true,
  async_refresh_local_media_agent: true,
)

res = s.library.get_media_meta_data(req)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Operations::GetMediaMetaDataRequest](../../models/operations/getmediametadatarequest.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::GetMediaMetaDataResponse)](../../models/operations/getmediametadataresponse.md)**



## get_media_arts

Returns the background artwork for a library item.

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.library.get_media_arts(rating_key=16_099)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                            | Type                                                 | Required                                             | Description                                          | Example                                              |
| ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- |
| `rating_key`                                         | *::Integer*                                          | :heavy_check_mark:                                   | the id of the library item to return the artwork of. | 16099                                                |

### Response

**[T.nilable(Models::Operations::GetMediaArtsResponse)](../../models/operations/getmediaartsresponse.md)**



## post_media_arts

Uploads an image to use as the background artwork for a library item, either from a local file or a remote URL

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.library.post_media_arts(rating_key=2268, url="https://api.mediux.pro/assets/fcfdc487-dd07-4993-a0c1-0a3015362e5b", request_body="0xee51EFC6De".encode())

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                          | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `rating_key`                                                       | *::Integer*                                                        | :heavy_check_mark:                                                 | the id of the library item to return the posters of.               | 2268                                                               |
| `url`                                                              | *T.nilable(::String)*                                              | :heavy_minus_sign:                                                 | The URL of the image, if uploading a remote image                  | https://api.mediux.pro/assets/fcfdc487-dd07-4993-a0c1-0a3015362e5b |
| `request_body`                                                     | *T.nilable(::String)*                                              | :heavy_minus_sign:                                                 | The contents of the image, if uploading a local file               |                                                                    |

### Response

**[T.nilable(Models::Operations::PostMediaArtsResponse)](../../models/operations/postmediaartsresponse.md)**



## get_media_posters

Returns the available posters for a library item.

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.library.get_media_posters(rating_key=16_099)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                            | Type                                                 | Required                                             | Description                                          | Example                                              |
| ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- |
| `rating_key`                                         | *::Integer*                                          | :heavy_check_mark:                                   | the id of the library item to return the posters of. | 16099                                                |

### Response

**[T.nilable(Models::Operations::GetMediaPostersResponse)](../../models/operations/getmediapostersresponse.md)**



## post_media_poster

Uploads a poster to a library item, either from a local file or a remote URL

### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.library.post_media_poster(rating_key=2268, url="https://api.mediux.pro/assets/fcfdc487-dd07-4993-a0c1-0a3015362e5b", request_body="0x7C3d45ad4B".encode())

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                          | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `rating_key`                                                       | *::Integer*                                                        | :heavy_check_mark:                                                 | the id of the library item to return the posters of.               | 2268                                                               |
| `url`                                                              | *T.nilable(::String)*                                              | :heavy_minus_sign:                                                 | The URL of the image, if uploading a remote image                  | https://api.mediux.pro/assets/fcfdc487-dd07-4993-a0c1-0a3015362e5b |
| `request_body`                                                     | *T.nilable(::String)*                                              | :heavy_minus_sign:                                                 | The contents of the image, if uploading a local file               |                                                                    |

### Response

**[T.nilable(Models::Operations::PostMediaPosterResponse)](../../models/operations/postmediaposterresponse.md)**



## get_metadata_children

This endpoint will return the children of of a library item specified with the ratingKey.


### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.library.get_metadata_children(rating_key=1539.14, include_elements="<value>")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                               | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `rating_key`                                                            | *::Float*                                                               | :heavy_check_mark:                                                      | the id of the library item to return the children of.                   |
| `include_elements`                                                      | *T.nilable(::String)*                                                   | :heavy_minus_sign:                                                      | Adds additional elements to the response. Supported types are (Stream)<br/> |

### Response

**[T.nilable(Models::Operations::GetMetadataChildrenResponse)](../../models/operations/getmetadatachildrenresponse.md)**



## get_top_watched_content

This endpoint will return the top watched content from libraries of a certain type


### Example Usage

```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: Models::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.library.get_top_watched_content(type=Models::Operations::GetTopWatchedContentQueryParamType::TV_SHOW, include_guids=1)

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                    | Type                                                                                                                                                                                         | Required                                                                                                                                                                                     | Description                                                                                                                                                                                  | Example                                                                                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `type`                                                                                                                                                                                       | [Models::Operations::GetTopWatchedContentQueryParamType](../../models/operations/gettopwatchedcontentqueryparamtype.md)                                                                      | :heavy_check_mark:                                                                                                                                                                           | The type of media to retrieve or filter by.<br/>1 = movie<br/>2 = show<br/>3 = season<br/>4 = episode<br/>E.g. A movie library will not return anything with type 3 as there are no seasons for movie libraries<br/> | 2                                                                                                                                                                                            |
| `include_guids`                                                                                                                                                                              | *T.nilable(::Integer)*                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                           | Adds the Guids object to the response<br/>                                                                                                                                                   | 1                                                                                                                                                                                            |

### Response

**[T.nilable(Models::Operations::GetTopWatchedContentResponse)](../../models/operations/gettopwatchedcontentresponse.md)**

