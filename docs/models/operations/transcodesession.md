# TranscodeSession


## Fields

| Field                    | Type                     | Required                 | Description              | Example                  |
| ------------------------ | ------------------------ | ------------------------ | ------------------------ | ------------------------ |
| `key`                    | *T.nilable(String)*      | :heavy_minus_sign:       | N/A                      | zz7llzqlx8w9vnrsbnwhbmep |
| `throttled`              | *T.nilable(T::Boolean)*  | :heavy_minus_sign:       | N/A                      |                          |
| `complete`               | *T.nilable(T::Boolean)*  | :heavy_minus_sign:       | N/A                      |                          |
| `progress`               | *T.nilable(Float)*       | :heavy_minus_sign:       | N/A                      | 0.4000000059604645       |
| `size`                   | *T.nilable(Float)*       | :heavy_minus_sign:       | N/A                      | -22                      |
| `speed`                  | *T.nilable(Float)*       | :heavy_minus_sign:       | N/A                      | 22.399999618530273       |
| `error`                  | *T.nilable(T::Boolean)*  | :heavy_minus_sign:       | N/A                      |                          |
| `duration`               | *T.nilable(Float)*       | :heavy_minus_sign:       | N/A                      | 2561768                  |
| `context`                | *T.nilable(String)*      | :heavy_minus_sign:       | N/A                      | streaming                |
| `source_video_codec`     | *T.nilable(String)*      | :heavy_minus_sign:       | N/A                      | h264                     |
| `source_audio_codec`     | *T.nilable(String)*      | :heavy_minus_sign:       | N/A                      | ac3                      |
| `video_decision`         | *T.nilable(String)*      | :heavy_minus_sign:       | N/A                      | transcode                |
| `audio_decision`         | *T.nilable(String)*      | :heavy_minus_sign:       | N/A                      | transcode                |
| `protocol`               | *T.nilable(String)*      | :heavy_minus_sign:       | N/A                      | http                     |
| `container`              | *T.nilable(String)*      | :heavy_minus_sign:       | N/A                      | mkv                      |
| `video_codec`            | *T.nilable(String)*      | :heavy_minus_sign:       | N/A                      | h264                     |
| `audio_codec`            | *T.nilable(String)*      | :heavy_minus_sign:       | N/A                      | opus                     |
| `audio_channels`         | *T.nilable(Float)*       | :heavy_minus_sign:       | N/A                      | 2                        |
| `transcode_hw_requested` | *T.nilable(T::Boolean)*  | :heavy_minus_sign:       | N/A                      |                          |
| `time_stamp`             | *T.nilable(Float)*       | :heavy_minus_sign:       | N/A                      | 1.6818695357764285e+09   |
| `max_offset_available`   | *T.nilable(Float)*       | :heavy_minus_sign:       | N/A                      | 861.778                  |
| `min_offset_available`   | *T.nilable(Float)*       | :heavy_minus_sign:       | N/A                      | 0                        |