require 'rubygems'
require 'rake'

#-Github begin
#-Github   require 'jeweler'
#-Github   Jeweler::Tasks.new do |gem|
#-Github     gem.name = "b_named"
#-Github     gem.summary = %Q{A Ruby wrapper for the bNamed.net API.}
#-Github     gem.description = %Q{Currently it enables you to retrieve a list of domains and their status.}
#-Github     gem.email = "wout@qimmiq.net"
#-Github     gem.homepage = "http://github.com/wout/b_named"
#-Github     gem.authors = ["wout"]
#-Github     gem.add_development_dependency "rspec"
#-Github     # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
#-Github   end
#-Github rescue LoadError
#-Github   puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
#-Github end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name        = "b_named"
    gem.summary     = %Q{A Ruby wrapper for the bNamed.net API.}
    gem.description = %Q{Currently it enables you to retrieve a list of domains and their status.}
    gem.email       = "wout@qimmiq.net"
    gem.homepage    = "http://github.com/wout/b_named"
    gem.authors     = ["wout"]
    gem.files       = FileList["[A-Z]*", "{lib,spec}/**/*"]
    
    gem.add_dependency('mash', '0.0.3')
    gem.add_dependency('httparty', '>= 0.4.3')
    
    gem.add_development_dependency "rspec"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "b_named #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
