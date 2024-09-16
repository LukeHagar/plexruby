# Media

## Overview

API Calls interacting with Plex Media Server Media


### Available Operations

* [mark_played](#mark_played) - Mark Media Played
* [mark_unplayed](#mark_unplayed) - Mark Media Unplayed
* [update_play_progress](#update_play_progress) - Update Media Play Progress
* [get_banner_image](#get_banner_image) - Get Banner Image
* [get_thumb_image](#get_thumb_image) - Get Thumb Image

## mark_played

This will mark the provided media key as Played.

### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      x_plex_client_identifier: "gcgzw5rz2xovp84b4vha3a40",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.media.mark_played(key=59398.0)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                       | Type                            | Required                        | Description                     | Example                         |
| ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- | ------------------------------- |
| `key`                           | *::Float*                       | :heavy_check_mark:              | The media key to mark as played | 59398                           |

### Response

**[T.nilable(::PlexRubySDK::Operations::MarkPlayedResponse)](../../models/operations/markplayedresponse.md)**




## mark_unplayed

This will mark the provided media key as Unplayed.

### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      x_plex_client_identifier: "gcgzw5rz2xovp84b4vha3a40",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.media.mark_unplayed(key=59398.0)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                         | Type                              | Required                          | Description                       | Example                           |
| --------------------------------- | --------------------------------- | --------------------------------- | --------------------------------- | --------------------------------- |
| `key`                             | *::Float*                         | :heavy_check_mark:                | The media key to mark as Unplayed | 59398                             |

### Response

**[T.nilable(::PlexRubySDK::Operations::MarkUnplayedResponse)](../../models/operations/markunplayedresponse.md)**




## update_play_progress

This API command can be used to update the play progress of a media item.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      x_plex_client_identifier: "gcgzw5rz2xovp84b4vha3a40",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.media.update_play_progress(key="<key>", time=90000.0, state="played")

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                           | Type                                                                | Required                                                            | Description                                                         | Example                                                             |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `key`                                                               | *::String*                                                          | :heavy_check_mark:                                                  | the media key                                                       |                                                                     |
| `time`                                                              | *::Float*                                                           | :heavy_check_mark:                                                  | The time, in milliseconds, used to set the media playback progress. | 90000                                                               |
| `state`                                                             | *::String*                                                          | :heavy_check_mark:                                                  | The playback state of the media item.                               | played                                                              |

### Response

**[T.nilable(::PlexRubySDK::Operations::UpdatePlayProgressResponse)](../../models/operations/updateplayprogressresponse.md)**




## get_banner_image

Gets the banner image of the media item

### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      x_plex_client_identifier: "gcgzw5rz2xovp84b4vha3a40",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)


req = ::PlexRubySDK::Operations::GetBannerImageRequest.new(
  rating_key: 9518,
  width: 396,
  height: 396,
  min_size: 1,
  upscale: 1,
  x_plex_token: "CV5xoxjTpFKUzBTShsaf",
)
    
res = s.media.get_banner_image(req)

if ! res.bytes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                            | Type                                                                                                 | Required                                                                                             | Description                                                                                          |
| ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
| `request`                                                                                            | [::PlexRubySDK::Operations::GetBannerImageRequest](../../models/operations/getbannerimagerequest.md) | :heavy_check_mark:                                                                                   | The request object to use for the request.                                                           |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetBannerImageResponse)](../../models/operations/getbannerimageresponse.md)**




## get_thumb_image

Gets the thumbnail image of the media item

### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      x_plex_client_identifier: "gcgzw5rz2xovp84b4vha3a40",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)


req = ::PlexRubySDK::Operations::GetThumbImageRequest.new(
  rating_key: 9518,
  width: 396,
  height: 396,
  min_size: 1,
  upscale: 1,
  x_plex_token: "CV5xoxjTpFKUzBTShsaf",
)
    
res = s.media.get_thumb_image(req)

if ! res.bytes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                          | Type                                                                                               | Required                                                                                           | Description                                                                                        |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `request`                                                                                          | [::PlexRubySDK::Operations::GetThumbImageRequest](../../models/operations/getthumbimagerequest.md) | :heavy_check_mark:                                                                                 | The request object to use for the request.                                                         |

### Response

**[T.nilable(::PlexRubySDK::Operations::GetThumbImageResponse)](../../models/operations/getthumbimageresponse.md)**


