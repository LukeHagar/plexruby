# TranscodeSession


## Fields

| Field                    | Type                     | Required                 | Description              | Example                  |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| `key`                    | *T.nilable(::String)*    | :heavy_minus_sign:       | N/A                      | vv3i2q2lax92qlzul1hbd4bx |
| `throttled`              | *T.nilable(T::Boolean)*  | :heavy_minus_sign:       | N/A                      | false                    |
| `complete`               | *T.nilable(T::Boolean)*  | :heavy_minus_sign:       | N/A                      | false                    |
| `progress`               | *T.nilable(::Float)*     | :heavy_minus_sign:       | N/A                      | 1.7999999523162842       |
| `size`                   | *T.nilable(::Integer)*   | :heavy_minus_sign:       | N/A                      | -22                      |
| `speed`                  | *T.nilable(::Float)*     | :heavy_minus_sign:       | N/A                      | 25.100000381469727       |
| `error`                  | *T.nilable(T::Boolean)*  | :heavy_minus_sign:       | N/A                      | false                    |
| `duration`               | *T.nilable(::Integer)*   | :heavy_minus_sign:       | N/A                      | 1445695                  |
| `remaining`              | *T.nilable(::Integer)*   | :heavy_minus_sign:       | N/A                      | 53                       |
| `context`                | *T.nilable(::String)*    | :heavy_minus_sign:       | N/A                      | streaming                |
| `source_video_codec`     | *T.nilable(::String)*    | :heavy_minus_sign:       | N/A                      | h264                     |
| `source_audio_codec`     | *T.nilable(::String)*    | :heavy_minus_sign:       | N/A                      | aac                      |
| `video_decision`         | *T.nilable(::String)*    | :heavy_minus_sign:       | N/A                      | transcode                |
| `audio_decision`         | *T.nilable(::String)*    | :heavy_minus_sign:       | N/A                      | transcode                |
| `subtitle_decision`      | *T.nilable(::String)*    | :heavy_minus_sign:       | N/A                      | burn                     |
| `protocol`               | *T.nilable(::String)*    | :heavy_minus_sign:       | N/A                      | http                     |
| `container`              | *T.nilable(::String)*    | :heavy_minus_sign:       | N/A                      | mkv                      |
| `video_codec`            | *T.nilable(::String)*    | :heavy_minus_sign:       | N/A                      | h264                     |
| `audio_codec`            | *T.nilable(::String)*    | :heavy_minus_sign:       | N/A                      | opus                     |
| `audio_channels`         | *T.nilable(::Integer)*   | :heavy_minus_sign:       | N/A                      | 1                        |
| `transcode_hw_requested` | *T.nilable(T::Boolean)*  | :heavy_minus_sign:       | N/A                      | true                     |
| `time_stamp`             | *T.nilable(::Float)*     | :heavy_minus_sign:       | N/A                      | 1.7058958054919229e+09   |
| `max_offset_available`   | *T.nilable(::Float)*     | :heavy_minus_sign:       | N/A                      | 29.53                    |
| `min_offset_available`   | *T.nilable(::Float)*     | :heavy_minus_sign:       | N/A                      | 3.003000020980835        |