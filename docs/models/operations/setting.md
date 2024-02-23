# Setting


## Fields

| Field                   | Type                    | Required                | Description             | Example                 |
| ----------------------- | ----------------------- | ----------------------- | ----------------------- | ----------------------- |
| `id`                    | *T.nilable(::String)*   | :heavy_minus_sign:      | N/A                     | EnableDatabaseTrace     |
| `label`                 | *T.nilable(::String)*   | :heavy_minus_sign:      | N/A                     |                         |
| `summary`               | *T.nilable(::String)*   | :heavy_minus_sign:      | N/A                     |                         |
| `type`                  | *T.nilable(::String)*   | :heavy_minus_sign:      | N/A                     | bool                    |
| `default`               | *T.nilable(T::Boolean)* | :heavy_minus_sign:      | N/A                     | false                   |
| `value`                 | *T.nilable(T::Boolean)* | :heavy_minus_sign:      | N/A                     | false                   |
| `hidden`                | *T.nilable(T::Boolean)* | :heavy_minus_sign:      | N/A                     | true                    |
| `advanced`              | *T.nilable(T::Boolean)* | :heavy_minus_sign:      | N/A                     | false                   |
| `group`                 | *T.nilable(::String)*   | :heavy_minus_sign:      | N/A                     |                         |
| `enum_values`           | *T.nilable(::String)*   | :heavy_minus_sign:      | N/A                     | 1:admin only\|2:everyone |