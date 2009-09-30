# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{b_named}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Wout Fierens"]
  s.date = %q{2009-09-30}
  s.description = %q{A Ruby wrapper for the bNamed.net API.}
  s.email = %q{wout@qimmiq.net}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/b_named.rb", "lib/b_named/availability.rb", "lib/b_named/version.rb", "script/console", "script/destroy", "script/generate", "spec/b_named_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "tasks/rspec.rake"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/wout/b_named}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{b_named}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{A Ruby wrapper for the bNamed.net API. Currently it enables you to retrieve a list of domains and their status.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mime-types>, [">= 1.15"])
      s.add_runtime_dependency(%q<diff-lcs>, [">= 1.1.2"])
    else
      s.add_dependency(%q<mime-types>, [">= 1.15"])
      s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
    end
  else
    s.add_dependency(%q<mime-types>, [">= 1.15"])
    s.add_dependency(%q<diff-lcs>, [">= 1.1.2"])
  end
end