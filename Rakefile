require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

require 'spec/rake/spectask'

Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_files = FileList['spec/**/*.rb']
  t.spec_opts = ["-cf specdoc"]
end

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end

task :default do |t|
  Rake::Task[:spec].invoke
  Rake::Task[:features].invoke
end