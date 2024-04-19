# GetLibraryHubsMedia


## Fields

| Field                                                                                                                                                                                                                                                                                                        | Type                                                                                                                                                                                                                                                                                                         | Required                                                                                                                                                                                                                                                                                                     | Description                                                                                                                                                                                                                                                                                                  | Example                                                                                                                                                                                                                                                                                                      |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `id`                                                                                                                                                                                                                                                                                                         | *T.nilable(::Integer)*                                                                                                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | 38247                                                                                                                                                                                                                                                                                                        |
| `duration`                                                                                                                                                                                                                                                                                                   | *T.nilable(::Integer)*                                                                                                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | 6017237                                                                                                                                                                                                                                                                                                      |
| `bitrate`                                                                                                                                                                                                                                                                                                    | *T.nilable(::Integer)*                                                                                                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | 2051                                                                                                                                                                                                                                                                                                         |
| `width`                                                                                                                                                                                                                                                                                                      | *T.nilable(::Integer)*                                                                                                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | 1920                                                                                                                                                                                                                                                                                                         |
| `height`                                                                                                                                                                                                                                                                                                     | *T.nilable(::Integer)*                                                                                                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | 1080                                                                                                                                                                                                                                                                                                         |
| `aspect_ratio`                                                                                                                                                                                                                                                                                               | *T.nilable(::Float)*                                                                                                                                                                                                                                                                                         | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | 1.78                                                                                                                                                                                                                                                                                                         |
| `audio_channels`                                                                                                                                                                                                                                                                                             | *T.nilable(::Integer)*                                                                                                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | 2                                                                                                                                                                                                                                                                                                            |
| `audio_codec`                                                                                                                                                                                                                                                                                                | *T.nilable(::String)*                                                                                                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | aac                                                                                                                                                                                                                                                                                                          |
| `video_codec`                                                                                                                                                                                                                                                                                                | *T.nilable(::String)*                                                                                                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | h264                                                                                                                                                                                                                                                                                                         |
| `video_resolution`                                                                                                                                                                                                                                                                                           | *T.nilable(::String)*                                                                                                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | 1080                                                                                                                                                                                                                                                                                                         |
| `container`                                                                                                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | mp4                                                                                                                                                                                                                                                                                                          |
| `video_frame_rate`                                                                                                                                                                                                                                                                                           | *T.nilable(::String)*                                                                                                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | 24p                                                                                                                                                                                                                                                                                                          |
| `optimized_for_streaming`                                                                                                                                                                                                                                                                                    | *T.nilable(::Integer)*                                                                                                                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | 1                                                                                                                                                                                                                                                                                                            |
| `audio_profile`                                                                                                                                                                                                                                                                                              | *T.nilable(::String)*                                                                                                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | lc                                                                                                                                                                                                                                                                                                           |
| `has64bit_offsets`                                                                                                                                                                                                                                                                                           | *T.nilable(T::Boolean)*                                                                                                                                                                                                                                                                                      | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | false                                                                                                                                                                                                                                                                                                        |
| `video_profile`                                                                                                                                                                                                                                                                                              | *T.nilable(::String)*                                                                                                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | high                                                                                                                                                                                                                                                                                                         |
| `part`                                                                                                                                                                                                                                                                                                       | T::Array<[::OpenApiSDK::Operations::GetLibraryHubsPart](../../models/operations/getlibraryhubspart.md)>                                                                                                                                                                                                      | :heavy_minus_sign:                                                                                                                                                                                                                                                                                           | N/A                                                                                                                                                                                                                                                                                                          | [<br/>{<br/>"id": 38247,<br/>"key": "/library/parts/38247/1589412494/file.mp4",<br/>"duration": 6017237,<br/>"file": "/movies/Tangled (2010)/Tangled (2010) Bluray-1080p.mp4",<br/>"size": 1545647447,<br/>"audioProfile": "lc",<br/>"container": "mp4",<br/>"has64bitOffsets": false,<br/>"optimizedForStreaming": true,<br/>"videoProfile": "high"<br/>}<br/>] |