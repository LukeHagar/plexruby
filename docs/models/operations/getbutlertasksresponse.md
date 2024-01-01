# GetButlerTasksResponse


## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `content_type`                                                                                                         | *String*                                                                                                               | :heavy_check_mark:                                                                                                     | HTTP response content type for this operation                                                                          |
| `status_code`                                                                                                          | *Integer*                                                                                                              | :heavy_check_mark:                                                                                                     | HTTP response status code for this operation                                                                           |
| `raw_response`                                                                                                         | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response)                                            | :heavy_check_mark:                                                                                                     | Raw HTTP response; suitable for custom response parsing                                                                |
| `two_hundred_application_json_object`                                                                                  | [T.nilable(Operations::GetButlerTasksResponseBody)](../../models/operations/getbutlertasksresponsebody.md)             | :heavy_minus_sign:                                                                                                     | All butler tasks                                                                                                       |
| `four_hundred_and_one_application_json_object`                                                                         | [T.nilable(Operations::GetButlerTasksButlerResponseBody)](../../models/operations/getbutlertasksbutlerresponsebody.md) | :heavy_minus_sign:                                                                                                     | Unauthorized - Returned if the X-Plex-Token is missing from the header or query.                                       |