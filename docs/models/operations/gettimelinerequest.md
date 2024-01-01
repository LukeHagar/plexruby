# GetTimelineRequest


## Fields

| Field                                                 | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `rating_key`                                          | *Float*                                               | :heavy_check_mark:                                    | The rating key of the media item                      |
| `key`                                                 | *String*                                              | :heavy_check_mark:                                    | The key of the media item to get the timeline for     |
| `state`                                               | [Operations::State](../../models/operations/state.md) | :heavy_check_mark:                                    | The state of the media item                           |
| `has_mde`                                             | *Float*                                               | :heavy_check_mark:                                    | Whether the media item has MDE                        |
| `time`                                                | *Float*                                               | :heavy_check_mark:                                    | The time of the media item                            |
| `duration`                                            | *Float*                                               | :heavy_check_mark:                                    | The duration of the media item                        |
| `context`                                             | *String*                                              | :heavy_check_mark:                                    | The context of the media item                         |
| `play_queue_item_id`                                  | *Float*                                               | :heavy_check_mark:                                    | The play queue item ID of the media item              |
| `play_back_time`                                      | *Float*                                               | :heavy_check_mark:                                    | The playback time of the media item                   |
| `row`                                                 | *Float*                                               | :heavy_check_mark:                                    | The row of the media item                             |