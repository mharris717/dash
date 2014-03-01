# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "dash_shell"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Harris"]
  s.date = "2014-03-01"
  s.description = "dash"
  s.email = "mharris717@gmail.com"
  s.executables = ["dash"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "Guardfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/dash",
    "dash.gemspec",
    "lib/dash.rb",
    "lib/dash/builtin.rb",
    "lib/dash/command_line.rb",
    "lib/dash/session.rb",
    "spec/dash_spec.rb",
    "spec/session_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/mharris717/dash"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.7"
  s.summary = "dash"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mharris_ext>, [">= 0"])
      s.add_runtime_dependency(%q<andand>, [">= 0"])
      s.add_runtime_dependency(%q<trollop>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-spork>, [">= 0"])
      s.add_development_dependency(%q<rb-fsevent>, ["~> 0.9"])
      s.add_development_dependency(%q<lre>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<mharris_ext>, [">= 0"])
      s.add_dependency(%q<andand>, [">= 0"])
      s.add_dependency(%q<trollop>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, [">= 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<guard-spork>, [">= 0"])
      s.add_dependency(%q<rb-fsevent>, ["~> 0.9"])
      s.add_dependency(%q<lre>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<mharris_ext>, [">= 0"])
    s.add_dependency(%q<andand>, [">= 0"])
    s.add_dependency(%q<trollop>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.8.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, [">= 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<guard-spork>, [">= 0"])
    s.add_dependency(%q<rb-fsevent>, ["~> 0.9"])
    s.add_dependency(%q<lre>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end

