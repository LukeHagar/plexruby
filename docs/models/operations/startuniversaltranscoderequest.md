# StartUniversalTranscodeRequest


## Fields

| Field                                         | Type                                          | Required                                      | Description                                   |
| --------------------------------------------- | --------------------------------------------- | --------------------------------------------- | --------------------------------------------- |
| `has_mde`                                     | *::Float*                                     | :heavy_check_mark:                            | Whether the media item has MDE                |
| `path`                                        | *::String*                                    | :heavy_check_mark:                            | The path to the media item to transcode       |
| `media_index`                                 | *::Float*                                     | :heavy_check_mark:                            | The index of the media item to transcode      |
| `part_index`                                  | *::Float*                                     | :heavy_check_mark:                            | The index of the part to transcode            |
| `protocol`                                    | *::String*                                    | :heavy_check_mark:                            | The protocol to use for the transcode session |
| `fast_seek`                                   | *T.nilable(::Float)*                          | :heavy_minus_sign:                            | Whether to use fast seek or not               |
| `direct_play`                                 | *T.nilable(::Float)*                          | :heavy_minus_sign:                            | Whether to use direct play or not             |
| `direct_stream`                               | *T.nilable(::Float)*                          | :heavy_minus_sign:                            | Whether to use direct stream or not           |
| `subtitle_size`                               | *T.nilable(::Float)*                          | :heavy_minus_sign:                            | The size of the subtitles                     |
| `subtites`                                    | *T.nilable(::String)*                         | :heavy_minus_sign:                            | The subtitles                                 |
| `audio_boost`                                 | *T.nilable(::Float)*                          | :heavy_minus_sign:                            | The audio boost                               |
| `location`                                    | *T.nilable(::String)*                         | :heavy_minus_sign:                            | The location of the transcode session         |
| `media_buffer_size`                           | *T.nilable(::Float)*                          | :heavy_minus_sign:                            | The size of the media buffer                  |
| `session`                                     | *T.nilable(::String)*                         | :heavy_minus_sign:                            | The session ID                                |
| `add_debug_overlay`                           | *T.nilable(::Float)*                          | :heavy_minus_sign:                            | Whether to add a debug overlay or not         |
| `auto_adjust_quality`                         | *T.nilable(::Float)*                          | :heavy_minus_sign:                            | Whether to auto adjust quality or not         |