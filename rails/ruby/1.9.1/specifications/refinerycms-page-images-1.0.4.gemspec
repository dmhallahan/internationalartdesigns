# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms-page-images"
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Resolve Digital", "David Jones", "Philip Arndt"]
  s.date = "2011-05-07"
  s.description = "Page Images Engine for Refinery CMS"
  s.email = "dave@resolvedigital.com"
  s.homepage = "http://github.com/resolve/refinerycms-page-images"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Page Images Engine for Refinery CMS"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-pages>, [">= 0.9.9.1"])
    else
      s.add_dependency(%q<refinerycms-pages>, [">= 0.9.9.1"])
    end
  else
    s.add_dependency(%q<refinerycms-pages>, [">= 0.9.9.1"])
  end
end
