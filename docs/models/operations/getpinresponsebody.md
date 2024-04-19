# GetPinResponseBody

The Pin


## Fields

| Field                                                                                                                                                                 | Type                                                                                                                                                                  | Required                                                                                                                                                              | Description                                                                                                                                                           | Example                                                                                                                                                               |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `id`                                                                                                                                                                  | *T.nilable(::Float)*                                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                    | PinID for use with authentication                                                                                                                                     | 1272322473                                                                                                                                                            |
| `code`                                                                                                                                                                | *T.nilable(::String)*                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                    | N/A                                                                                                                                                                   | 3patfx1a78ukcbr7x0n9bl26t                                                                                                                                             |
| `product`                                                                                                                                                             | *T.nilable(::String)*                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                    | N/A                                                                                                                                                                   | Plex Web                                                                                                                                                              |
| `trusted`                                                                                                                                                             | *T.nilable(T::Boolean)*                                                                                                                                               | :heavy_minus_sign:                                                                                                                                                    | N/A                                                                                                                                                                   |                                                                                                                                                                       |
| `qr`                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                    | a link to a QR code hosted on plex.tv <br/>The QR code redirects to the relevant `plex.tv/link` authentication page<br/>Which then prompts the user for the 4 Digit Link Pin<br/> | https://plex.tv/api/v2/pins/qr/3patfx1a78ukcbr7x0n9bl26t                                                                                                              |
| `client_identifier`                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                    | N/A                                                                                                                                                                   | Postman                                                                                                                                                               |
| `location`                                                                                                                                                            | [T.nilable(::OpenApiSDK::Operations::Location)](../../models/operations/location.md)                                                                                  | :heavy_minus_sign:                                                                                                                                                    | N/A                                                                                                                                                                   |                                                                                                                                                                       |
| `expires_in`                                                                                                                                                          | *T.nilable(::Float)*                                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                    | N/A                                                                                                                                                                   | 1800                                                                                                                                                                  |
| `created_at`                                                                                                                                                          | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                                                                                  | :heavy_minus_sign:                                                                                                                                                    | N/A                                                                                                                                                                   | 2023-04-12 17:00:03 +0000 UTC                                                                                                                                         |
| `expires_at`                                                                                                                                                          | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                                                                                                  | :heavy_minus_sign:                                                                                                                                                    | N/A                                                                                                                                                                   | 2023-04-12 17:30:03 +0000 UTC                                                                                                                                         |
| `auth_token`                                                                                                                                                          | *T.nilable(::String)*                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                    | N/A                                                                                                                                                                   |                                                                                                                                                                       |
| `new_registration`                                                                                                                                                    | *T.nilable(::String)*                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                    | N/A                                                                                                                                                                   |                                                                                                                                                                       |