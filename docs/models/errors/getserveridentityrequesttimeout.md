# GetServerIdentityRequestTimeout

Request Timeout


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 | Example                                                                     |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `code`                                                                      | *T.nilable(::Integer)*                                                      | :heavy_minus_sign:                                                          | N/A                                                                         | 408                                                                         |
| `message`                                                                   | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | N/A                                                                         | The server timed out waiting for the request.                               |
| `raw_response`                                                              | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response) | :heavy_minus_sign:                                                          | Raw HTTP response; suitable for custom response parsing                     |                                                                             |