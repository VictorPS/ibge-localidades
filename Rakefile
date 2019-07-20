require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  # test.test_files = FileList['tests/*.rb']
  t.pattern = 'test/*.rb'
  t.verbose = false # or true
end

desc "Run tests"
task :default => :test