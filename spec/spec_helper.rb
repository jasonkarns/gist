# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper.rb"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration

require 'rspec/its'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.mock_with :rspec do |mocks|
    mocks.syntax = :should
  end
  config.expect_with :rspec do |expectations|
    expectations.syntax = :should
  end
end

require 'webmock/rspec'
require 'gist'

RSpec::Matchers.define :be_expanded_path_for do |expected|
  match do |actual|
    actual.to_s == File.expand_path(expected.to_s)
  end
end

