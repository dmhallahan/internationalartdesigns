# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms-authentication"
  s.version = "1.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Resolve Digital", "Philip Arndt", "David Jones", "Steven Heidel", "U\u{c4}\u{a3}is Ozols"]
  s.date = "2011-09-01"
  s.description = "The default authentication engine for Refinery CMS"
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "refinerycms"
  s.rubygems_version = "1.8.10"
  s.summary = "Authentication engine for Refinery CMS"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-core>, ["= 1.0.8"])
      s.add_runtime_dependency(%q<activerecord>, ["~> 3.0.10"])
      s.add_runtime_dependency(%q<devise>, ["~> 1.4.3"])
      s.add_runtime_dependency(%q<friendly_id_globalize3>, ["~> 3.2.1"])
    else
      s.add_dependency(%q<refinerycms-core>, ["= 1.0.8"])
      s.add_dependency(%q<activerecord>, ["~> 3.0.10"])
      s.add_dependency(%q<devise>, ["~> 1.4.3"])
      s.add_dependency(%q<friendly_id_globalize3>, ["~> 3.2.1"])
    end
  else
    s.add_dependency(%q<refinerycms-core>, ["= 1.0.8"])
    s.add_dependency(%q<activerecord>, ["~> 3.0.10"])
    s.add_dependency(%q<devise>, ["~> 1.4.3"])
    s.add_dependency(%q<friendly_id_globalize3>, ["~> 3.2.1"])
  end
end
