# GetLibraryHubsRequest


## Fields

| Field                                                                                                                                                 | Type                                                                                                                                                  | Required                                                                                                                                              | Description                                                                                                                                           |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| `section_id`                                                                                                                                          | *Float*                                                                                                                                               | :heavy_check_mark:                                                                                                                                    | the Id of the library to query                                                                                                                        |
| `count`                                                                                                                                               | *T.nilable(Float)*                                                                                                                                    | :heavy_minus_sign:                                                                                                                                    | The number of items to return with each hub.                                                                                                          |
| `only_transient`                                                                                                                                      | [T.nilable(Operations::QueryParamOnlyTransient)](../../models/operations/queryparamonlytransient.md)                                                  | :heavy_minus_sign:                                                                                                                                    | Only return hubs which are "transient", meaning those which are prone to changing after media playback or addition (e.g. On Deck, or Recently Added). |