require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/*.rb'
  t.verbose = false
end

desc "Run tests"
task :default => :test