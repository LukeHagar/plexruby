<!-- Start SDK Example Usage [usage] -->
```ruby
require 'plex_ruby_sdk'

s = ::PlexRubySDK::PlexAPI.new(
      security: ::PlexRubySDK::Shared::Security.new(
        access_token: "<YOUR_API_KEY_HERE>",
      ),
    )

res = s.server.get_server_capabilities()

if ! res.object.nil?
  # handle response
end

```
<!-- End SDK Example Usage [usage] -->