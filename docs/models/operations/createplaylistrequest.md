# CreatePlaylistRequest


## Fields

| Field                                                 | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `title`                                               | *String*                                              | :heavy_check_mark:                                    | name of the playlist                                  |
| `type`                                                | [Operations::Type](../../models/operations/type.md)   | :heavy_check_mark:                                    | type of playlist to create                            |
| `smart`                                               | [Operations::Smart](../../models/operations/smart.md) | :heavy_check_mark:                                    | whether the playlist is smart or not                  |
| `uri`                                                 | *T.nilable(String)*                                   | :heavy_minus_sign:                                    | the content URI for the playlist                      |
| `play_queue_id`                                       | *T.nilable(Float)*                                    | :heavy_minus_sign:                                    | the play queue to copy to a playlist                  |