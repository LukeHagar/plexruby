# GetPlaylistsRequest


## Fields

| Field                                                                                | Type                                                                                 | Required                                                                             | Description                                                                          |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| `playlist_type`                                                                      | [T.nilable(Operations::PlaylistType)](../../models/operations/playlisttype.md)       | :heavy_minus_sign:                                                                   | limit to a type of playlist.                                                         |
| `smart`                                                                              | [T.nilable(Operations::QueryParamSmart)](../../models/operations/queryparamsmart.md) | :heavy_minus_sign:                                                                   | type of playlists to return (default is all).                                        |