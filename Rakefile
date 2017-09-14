require 'rake'
require 'rspec/core/rake_test'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = "-fdoc"
end

t :default => :spec
