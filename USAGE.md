<!-- Start SDK Example Usage [usage] -->
```ruby
require_relative plexruby


s = ::OpenApiSDK::PlexAPI.new
s.config_security(
  security=::OpenApiSDK::Shared::Security.new(
    access_token="<YOUR_API_KEY_HERE>",
  )
)

    
res = s.server.get_server_capabilities()

if ! res.two_hundred_application_json_object.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->