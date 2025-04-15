# GetTimelineBadRequest

Bad Request - A parameter was not specified, or was specified incorrectly.


## Fields

| Field                                                                                   | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `errors`                                                                                | T::Array<[Models::Errors::GetTimelineErrors](../../models/errors/gettimelineerrors.md)> | :heavy_minus_sign:                                                                      | N/A                                                                                     |
| `raw_response`                                                                          | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response)             | :heavy_minus_sign:                                                                      | Raw HTTP response; suitable for custom response parsing                                 |