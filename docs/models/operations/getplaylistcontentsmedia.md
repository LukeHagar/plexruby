# GetPlaylistContentsMedia


## Fields

| Field                                                                                                                                                                                                                                                              | Type                                                                                                                                                                                                                                                               | Required                                                                                                                                                                                                                                                           | Description                                                                                                                                                                                                                                                        | Example                                                                                                                                                                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `id`                                                                                                                                                                                                                                                               | *T.nilable(Integer)*                                                                                                                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | 15                                                                                                                                                                                                                                                                 |
| `duration`                                                                                                                                                                                                                                                         | *T.nilable(Integer)*                                                                                                                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | 141416                                                                                                                                                                                                                                                             |
| `bitrate`                                                                                                                                                                                                                                                          | *T.nilable(Integer)*                                                                                                                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | 2273                                                                                                                                                                                                                                                               |
| `width`                                                                                                                                                                                                                                                            | *T.nilable(Integer)*                                                                                                                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | 1920                                                                                                                                                                                                                                                               |
| `height`                                                                                                                                                                                                                                                           | *T.nilable(Integer)*                                                                                                                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | 814                                                                                                                                                                                                                                                                |
| `aspect_ratio`                                                                                                                                                                                                                                                     | *T.nilable(Float)*                                                                                                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | 2.35                                                                                                                                                                                                                                                               |
| `audio_channels`                                                                                                                                                                                                                                                   | *T.nilable(Integer)*                                                                                                                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | 2                                                                                                                                                                                                                                                                  |
| `audio_codec`                                                                                                                                                                                                                                                      | *T.nilable(String)*                                                                                                                                                                                                                                                | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | aac                                                                                                                                                                                                                                                                |
| `video_codec`                                                                                                                                                                                                                                                      | *T.nilable(String)*                                                                                                                                                                                                                                                | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | h264                                                                                                                                                                                                                                                               |
| `video_resolution`                                                                                                                                                                                                                                                 | *T.nilable(String)*                                                                                                                                                                                                                                                | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | 1080                                                                                                                                                                                                                                                               |
| `container`                                                                                                                                                                                                                                                        | *T.nilable(String)*                                                                                                                                                                                                                                                | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | mp4                                                                                                                                                                                                                                                                |
| `video_frame_rate`                                                                                                                                                                                                                                                 | *T.nilable(String)*                                                                                                                                                                                                                                                | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | 24p                                                                                                                                                                                                                                                                |
| `optimized_for_streaming`                                                                                                                                                                                                                                          | *T.nilable(Integer)*                                                                                                                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | 0                                                                                                                                                                                                                                                                  |
| `audio_profile`                                                                                                                                                                                                                                                    | *T.nilable(String)*                                                                                                                                                                                                                                                | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | lc                                                                                                                                                                                                                                                                 |
| `has64bit_offsets`                                                                                                                                                                                                                                                 | *T.nilable(T::Boolean)*                                                                                                                                                                                                                                            | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | false                                                                                                                                                                                                                                                              |
| `video_profile`                                                                                                                                                                                                                                                    | *T.nilable(String)*                                                                                                                                                                                                                                                | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | high                                                                                                                                                                                                                                                               |
| `part`                                                                                                                                                                                                                                                             | T::Array<[Operations::GetPlaylistContentsPart](../../models/operations/getplaylistcontentspart.md)>                                                                                                                                                                | :heavy_minus_sign:                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                | [{"audioProfile":"lc","container":"mp4","duration":141416,"file":"/movies/Serenity (2005)/Serenity (2005).mp4","has64bitOffsets":false,"id":15,"key":"/library/parts/15/1705637151/file.mp4","optimizedForStreaming":false,"size":40271948,"videoProfile":"high"}] |