<!-- Start SDK Example Usage [usage] -->
```ruby
require 'plexruby'


s = ::PlexRubySDK::PlexAPI.new(
      x_plex_client_identifier: "gcgzw5rz2xovp84b4vha3a40",
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