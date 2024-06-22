# GetLibraryItemsRequest


## Fields

| Field                                                           | Type                                                            | Required                                                        | Description                                                     | Example                                                         |
| --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------- |
| `section_id`                                                    | *::Object*                                                      | :heavy_check_mark:                                              | the Id of the library to query                                  |                                                                 |
| `tag`                                                           | [::OpenApiSDK::Operations::Tag](../../models/operations/tag.md) | :heavy_check_mark:                                              | A key representing a specific tag within the section.           |                                                                 |
| `include_guids`                                                 | *T.nilable(::Integer)*                                          | :heavy_minus_sign:                                              | Adds the Guids object to the response<br/>                      | 1                                                               |