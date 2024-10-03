<!-- Start SDK Example Usage [usage] -->
```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new(
      client_id: "3381b62b-9ab7-4e37-827b-203e9809eb58",
      client_name: "Plex for Roku",
      client_version: "2.4.1",
      platform: "Roku",
      device_nickname: "Roku 3",
    )
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.server.get_server_capabilities()

if ! res.object.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->