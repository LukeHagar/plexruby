# Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'faraday'

module OpenApiSDK
  module Operations
    # TaskName - the name of the task to be started.
    class TaskName < T::Enum
      enums do
        BACKUP_DATABASE = new('BackupDatabase')
        BUILD_GRACENOTE_COLLECTIONS = new('BuildGracenoteCollections')
        CHECK_FOR_UPDATES = new('CheckForUpdates')
        CLEAN_OLD_BUNDLES = new('CleanOldBundles')
        CLEAN_OLD_CACHE_FILES = new('CleanOldCacheFiles')
        DEEP_MEDIA_ANALYSIS = new('DeepMediaAnalysis')
        GENERATE_AUTO_TAGS = new('GenerateAutoTags')
        GENERATE_CHAPTER_THUMBS = new('GenerateChapterThumbs')
        GENERATE_MEDIA_INDEX_FILES = new('GenerateMediaIndexFiles')
        OPTIMIZE_DATABASE = new('OptimizeDatabase')
        REFRESH_LIBRARIES = new('RefreshLibraries')
        REFRESH_LOCAL_MEDIA = new('RefreshLocalMedia')
        REFRESH_PERIODIC_METADATA = new('RefreshPeriodicMetadata')
        UPGRADE_MEDIA_ANALYSIS = new('UpgradeMediaAnalysis')
      end
    end



    class StartTaskRequest < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # the name of the task to be started.
      field :task_name, Operations::TaskName, { 'path_param': { 'field_name': 'taskName', 'style': 'simple', 'explode': false } }


      sig { params(task_name: Operations::TaskName).void }
      def initialize(task_name: nil)
        @task_name = task_name
      end
    end


    class StartTaskErrors < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :code, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('code') } }

      field :message, T.nilable(String), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('message') } }

      field :status, T.nilable(Float), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('status') } }


      sig { params(code: T.nilable(Float), message: T.nilable(String), status: T.nilable(Float)).void }
      def initialize(code: nil, message: nil, status: nil)
        @code = code
        @message = message
        @status = status
      end
    end

    # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
    class StartTaskResponseBody < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :errors, T.nilable(T::Array[Operations::StartTaskErrors]), { 'format_json': { 'letter_case': OpenApiSDK::Utils.field_name('errors') } }


      sig { params(errors: T.nilable(T::Array[Operations::StartTaskErrors])).void }
      def initialize(errors: nil)
        @errors = errors
      end
    end


    class StartTaskResponse < OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, Faraday::Response
      # HTTP response status code for this operation
      field :status_code, Integer
      # Unauthorized - Returned if the X-Plex-Token is missing from the header or query.
      field :object, T.nilable(Operations::StartTaskResponseBody)


      sig { params(content_type: String, raw_response: Faraday::Response, status_code: Integer, object: T.nilable(Operations::StartTaskResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @object = object
      end
    end
  end
end
