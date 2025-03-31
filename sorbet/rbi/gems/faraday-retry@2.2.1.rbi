# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `faraday-retry` gem.
# Please instead update this file by running `bin/tapioca gem faraday-retry`.

# Faraday namespace.
#
# source://faraday-retry//lib/faraday/retriable_response.rb#4
module Faraday
  class << self
    # source://faraday/2.12.2/lib/faraday.rb#55
    def default_adapter; end

    # source://faraday/2.12.2/lib/faraday.rb#102
    def default_adapter=(adapter); end

    # source://faraday/2.12.2/lib/faraday.rb#59
    def default_adapter_options; end

    # source://faraday/2.12.2/lib/faraday.rb#59
    def default_adapter_options=(_arg0); end

    # source://faraday/2.12.2/lib/faraday.rb#120
    def default_connection; end

    # source://faraday/2.12.2/lib/faraday.rb#62
    def default_connection=(_arg0); end

    # source://faraday/2.12.2/lib/faraday.rb#127
    def default_connection_options; end

    # source://faraday/2.12.2/lib/faraday.rb#134
    def default_connection_options=(options); end

    # source://faraday/2.12.2/lib/faraday.rb#67
    def ignore_env_proxy; end

    # source://faraday/2.12.2/lib/faraday.rb#67
    def ignore_env_proxy=(_arg0); end

    # source://faraday/2.12.2/lib/faraday.rb#46
    def lib_path; end

    # source://faraday/2.12.2/lib/faraday.rb#46
    def lib_path=(_arg0); end

    # source://faraday/2.12.2/lib/faraday.rb#96
    def new(url = T.unsafe(nil), options = T.unsafe(nil), &block); end

    # source://faraday/2.12.2/lib/faraday.rb#107
    def respond_to_missing?(symbol, include_private = T.unsafe(nil)); end

    # source://faraday/2.12.2/lib/faraday.rb#42
    def root_path; end

    # source://faraday/2.12.2/lib/faraday.rb#42
    def root_path=(_arg0); end

    private

    # source://faraday/2.12.2/lib/faraday.rb#143
    def method_missing(name, *args, &block); end
  end
end

# Exception used to control the Retry middleware.
#
# source://faraday-retry//lib/faraday/retriable_response.rb#6
class Faraday::RetriableResponse < ::Faraday::Error; end

# Middleware main module.
#
# source://faraday-retry//lib/faraday/retry/middleware.rb#4
module Faraday::Retry; end

# This class provides the main implementation for your middleware.
# Your middleware can implement any of the following methods:
# * on_request - called when the request is being prepared
# * on_complete - called when the response is being processed
#
# Optionally, you can also override the following methods from Faraday::Middleware
# * initialize(app, options = {}) - the initializer method
# * call(env) - the main middleware invocation method.
#   This already calls on_request and on_complete, so you normally don't need to override it.
#   You may need to in case you need to "wrap" the request or need more control
#   (see "retry" middleware: https://github.com/lostisland/faraday/blob/main/lib/faraday/request/retry.rb#L142).
#   IMPORTANT: Remember to call `@app.call(env)` or `super` to not interrupt the middleware chain!
#
# source://faraday-retry//lib/faraday/retry/middleware.rb#17
class Faraday::Retry::Middleware < ::Faraday::Middleware
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @option options
  # @param app [#call]
  # @param options [Hash]
  # @return [Middleware] a new instance of Middleware
  #
  # source://faraday-retry//lib/faraday/retry/middleware.rb#127
  def initialize(app, options = T.unsafe(nil)); end

  # An exception matcher for the rescue clause can usually be any object
  # that responds to `===`, but for Ruby 1.8 it has to be a Class or Module.
  #
  # @api private
  # @param exceptions [Array]
  # @return [Module] an exception matcher
  #
  # source://faraday-retry//lib/faraday/retry/middleware.rb#185
  def build_exception_matcher(exceptions); end

  # source://faraday-retry//lib/faraday/retry/middleware.rb#133
  def calculate_sleep_amount(retries, env); end

  # @param env [Faraday::Env]
  #
  # source://faraday-retry//lib/faraday/retry/middleware.rb#147
  def call(env); end

  private

  # RFC for RateLimit Header Fields for HTTP:
  # https://www.ietf.org/archive/id/draft-ietf-httpapi-ratelimit-headers-05.html#name-fields-definition
  #
  # source://faraday-retry//lib/faraday/retry/middleware.rb#222
  def calculate_rate_limit_reset(env); end

  # MDN spec for Retry-After header:
  # https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Retry-After
  #
  # source://faraday-retry//lib/faraday/retry/middleware.rb#229
  def calculate_retry_after(env); end

  # source://faraday-retry//lib/faraday/retry/middleware.rb#234
  def calculate_retry_interval(retries); end

  # source://faraday-retry//lib/faraday/retry/middleware.rb#245
  def parse_retry_header(env, header); end

  # @return [Boolean]
  #
  # source://faraday-retry//lib/faraday/retry/middleware.rb#206
  def retry_request?(env, exception); end

  # source://faraday-retry//lib/faraday/retry/middleware.rb#211
  def rewind_files(body); end
end

# source://faraday-retry//lib/faraday/retry/middleware.rb#18
Faraday::Retry::Middleware::DEFAULT_EXCEPTIONS = T.let(T.unsafe(nil), Array)

# source://faraday-retry//lib/faraday/retry/middleware.rb#22
Faraday::Retry::Middleware::IDEMPOTENT_METHODS = T.let(T.unsafe(nil), Array)

# Options contains the configurable parameters for the Retry middleware.
#
# source://faraday-retry//lib/faraday/retry/middleware.rb#25
class Faraday::Retry::Middleware::Options < ::Faraday::Options
  # source://faraday-retry//lib/faraday/retry/middleware.rb#58
  def backoff_factor; end

  # source://faraday-retry//lib/faraday/retry/middleware.rb#62
  def exceptions; end

  # source://faraday-retry//lib/faraday/retry/middleware.rb#46
  def interval; end

  # source://faraday-retry//lib/faraday/retry/middleware.rb#54
  def interval_randomness; end

  # source://faraday-retry//lib/faraday/retry/middleware.rb#42
  def max; end

  # source://faraday-retry//lib/faraday/retry/middleware.rb#50
  def max_interval; end

  # source://faraday-retry//lib/faraday/retry/middleware.rb#66
  def methods; end

  # source://faraday-retry//lib/faraday/retry/middleware.rb#74
  def retry_block; end

  # source://faraday-retry//lib/faraday/retry/middleware.rb#70
  def retry_if; end

  # source://faraday-retry//lib/faraday/retry/middleware.rb#78
  def retry_statuses; end

  class << self
    # source://faraday-retry//lib/faraday/retry/middleware.rb#34
    def from(value); end
  end
end

# source://faraday-retry//lib/faraday/retry/middleware.rb#32
Faraday::Retry::Middleware::Options::DEFAULT_CHECK = T.let(T.unsafe(nil), Proc)

# source://faraday-retry//lib/faraday/retry/version.rb#5
Faraday::Retry::VERSION = T.let(T.unsafe(nil), String)
