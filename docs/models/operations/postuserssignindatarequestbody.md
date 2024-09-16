# PostUsersSignInDataRequestBody

Login credentials


## Fields

| Field                   | Type                    | Required                | Description             | Example                 |
| ----------------------- | ----------------------- | ----------------------- | ----------------------- | ----------------------- |
| `login`                 | *::String*              | :heavy_check_mark:      | N/A                     | username@email.com      |
| `password`              | *::String*              | :heavy_check_mark:      | N/A                     | password123             |
| `remember_me`           | *T.nilable(T::Boolean)* | :heavy_minus_sign:      | N/A                     |                         |
| `verification_code`     | *T.nilable(::String)*   | :heavy_minus_sign:      | N/A                     | 123456                  |