# typed: true
# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'minitest/test_task'
require 'rubocop/rake_task'

RuboCop::RakeTask.new

Minitest::TestTask.create

# So far default is working - leaving this here for reference.

# Minitest::TestTask.create(:test) do |t|
#   t.libs << 'test'
#   t.libs << 'lib'
#   t.warning = false
#   t.test_globs = ['test/**/*_test.rb']
# end

task :default => :test
