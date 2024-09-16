# UserProfile


## Fields

| Field                                                                                                                                                                                     | Type                                                                                                                                                                                      | Required                                                                                                                                                                                  | Description                                                                                                                                                                               | Example                                                                                                                                                                                   |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `auto_select_audio`                                                                                                                                                                       | *T.nilable(T::Boolean)*                                                                                                                                                                   | :heavy_minus_sign:                                                                                                                                                                        | If the account has automatically select audio and subtitle tracks enabled                                                                                                                 | true                                                                                                                                                                                      |
| `default_audio_language`                                                                                                                                                                  | *::String*                                                                                                                                                                                | :heavy_check_mark:                                                                                                                                                                        | The preferred audio language for the account                                                                                                                                              | ja                                                                                                                                                                                        |
| `default_subtitle_language`                                                                                                                                                               | *::String*                                                                                                                                                                                | :heavy_check_mark:                                                                                                                                                                        | The preferred subtitle language for the account                                                                                                                                           | en                                                                                                                                                                                        |
| `auto_select_subtitle`                                                                                                                                                                    | [T.nilable(::PlexRubySDK::Operations::AutoSelectSubtitle)](../../models/operations/autoselectsubtitle.md)                                                                                 | :heavy_minus_sign:                                                                                                                                                                        | The auto-select subtitle mode (0 = Manually selected, 1 = Shown with foreign audio, 2 = Always enabled)                                                                                   | 1                                                                                                                                                                                         |
| `default_subtitle_accessibility`                                                                                                                                                          | [T.nilable(::PlexRubySDK::Operations::DefaultSubtitleAccessibility)](../../models/operations/defaultsubtitleaccessibility.md)                                                             | :heavy_minus_sign:                                                                                                                                                                        | The subtitles for the deaf or hard-of-hearing (SDH) searches mode (0 = Prefer non-SDH subtitles, 1 = Prefer SDH subtitles, 2 = Only show SDH subtitles, 3 = Only shown non-SDH subtitles) | 1                                                                                                                                                                                         |
| `default_subtitle_forced`                                                                                                                                                                 | [T.nilable(::PlexRubySDK::Operations::DefaultSubtitleForced)](../../models/operations/defaultsubtitleforced.md)                                                                           | :heavy_minus_sign:                                                                                                                                                                        | The forced subtitles searches mode (0 = Prefer non-forced subtitles, 1 = Prefer forced subtitles, 2 = Only show forced subtitles, 3 = Only show non-forced subtitles)                     | 0                                                                                                                                                                                         |
| `watched_indicator`                                                                                                                                                                       | [T.nilable(::PlexRubySDK::Operations::WatchedIndicator)](../../models/operations/watchedindicator.md)                                                                                     | :heavy_minus_sign:                                                                                                                                                                        | N/A                                                                                                                                                                                       | 1                                                                                                                                                                                         |
| `media_reviews_visibility`                                                                                                                                                                | [T.nilable(::PlexRubySDK::Operations::MediaReviewsVisibility)](../../models/operations/mediareviewsvisibility.md)                                                                         | :heavy_minus_sign:                                                                                                                                                                        | N/A                                                                                                                                                                                       | 0                                                                                                                                                                                         |