require "bundler/gem_tasks"

require "rake/testtask"
Rake::TestTask.new(:spec) do |t|
  t.test_files = FileList["spec/*_spec.rb"]
  t.ruby_opts << '-Itest -Ilib'
end
task :default => :spec
