if ENV.fetch("COVERAGE", false)
  require "simplecov"

  if ENV["CIRCLE_ARTIFACTS"]
    dir = File.join(ENV["CIRCLE_ARTIFACTS"], "coverage")
    SimpleCov.coverage_dir(dir)
  end

  SimpleCov.start "rails"
end

require "webmock/rspec"
require "timecop"

# http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
