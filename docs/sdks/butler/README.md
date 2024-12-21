# Butler
(*butler*)

## Overview

Butler is the task manager of the Plex Media Server Ecosystem.


### Available Operations

* [get_butler_tasks](#get_butler_tasks) - Get Butler tasks
* [start_all_tasks](#start_all_tasks) - Start all Butler tasks
* [stop_all_tasks](#stop_all_tasks) - Stop all Butler tasks
* [start_task](#start_task) - Start a single Butler task
* [stop_task](#stop_task) - Stop a single Butler task

## get_butler_tasks

Returns a list of butler tasks

### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.butler.get_butler_tasks()

if ! res.object.nil?
  # handle response
end

```

### Response

**[T.nilable(::PlexRubySDK::Operations::GetButlerTasksResponse)](../../models/operations/getbutlertasksresponse.md)**



## start_all_tasks

This endpoint will attempt to start all Butler tasks that are enabled in the settings. Butler tasks normally run automatically during a time window configured on the server's Settings page but can be manually started using this endpoint. Tasks will run with the following criteria:
1. Any tasks not scheduled to run on the current day will be skipped.
2. If a task is configured to run at a random time during the configured window and we are outside that window, the task will start immediately.
3. If a task is configured to run at a random time during the configured window and we are within that window, the task will be scheduled at a random time within the window.
4. If we are outside the configured window, the task will start immediately.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.butler.start_all_tasks()

if res.status_code == 200
  # handle response
end

```

### Response

**[T.nilable(::PlexRubySDK::Operations::StartAllTasksResponse)](../../models/operations/startalltasksresponse.md)**



## stop_all_tasks

This endpoint will stop all currently running tasks and remove any scheduled tasks from the queue.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.butler.stop_all_tasks()

if res.status_code == 200
  # handle response
end

```

### Response

**[T.nilable(::PlexRubySDK::Operations::StopAllTasksResponse)](../../models/operations/stopalltasksresponse.md)**



## start_task

This endpoint will attempt to start a single Butler task that is enabled in the settings. Butler tasks normally run automatically during a time window configured on the server's Settings page but can be manually started using this endpoint. Tasks will run with the following criteria:
1. Any tasks not scheduled to run on the current day will be skipped.
2. If a task is configured to run at a random time during the configured window and we are outside that window, the task will start immediately.
3. If a task is configured to run at a random time during the configured window and we are within that window, the task will be scheduled at a random time within the window.
4. If we are outside the configured window, the task will start immediately.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.butler.start_task(task_name=::PlexRubySDK::Operations::TaskName::CLEAN_OLD_BUNDLES)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                  | Type                                                                       | Required                                                                   | Description                                                                |
| -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `task_name`                                                                | [::PlexRubySDK::Operations::TaskName](../../models/operations/taskname.md) | :heavy_check_mark:                                                         | the name of the task to be started.                                        |

### Response

**[T.nilable(::PlexRubySDK::Operations::StartTaskResponse)](../../models/operations/starttaskresponse.md)**



## stop_task

This endpoint will stop a currently running task by name, or remove it from the list of scheduled tasks if it exists. See the section above for a list of task names for this endpoint.


### Example Usage

```ruby
require 'plex_ruby_sdk'


s = ::PlexRubySDK::PlexAPI.new
s.config_security(
  ::PlexRubySDK::Shared::Security.new(
    access_token: "<YOUR_API_KEY_HERE>",
  )
)

    
res = s.butler.stop_task(task_name=::PlexRubySDK::Operations::PathParamTaskName::BACKUP_DATABASE)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                    | Type                                                                                         | Required                                                                                     | Description                                                                                  |
| -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| `task_name`                                                                                  | [::PlexRubySDK::Operations::PathParamTaskName](../../models/operations/pathparamtaskname.md) | :heavy_check_mark:                                                                           | The name of the task to be started.                                                          |

### Response

**[T.nilable(::PlexRubySDK::Operations::StopTaskResponse)](../../models/operations/stoptaskresponse.md)**

