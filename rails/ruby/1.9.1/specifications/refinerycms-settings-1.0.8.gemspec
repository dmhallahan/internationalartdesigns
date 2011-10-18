# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms-settings"
  s.version = "1.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Resolve Digital", "Philip Arndt", "David Jones", "Steven Heidel", "U\u{c4}\u{a3}is Ozols"]
  s.date = "2011-09-01"
  s.description = "The default settings engine that is required by Refinery CMS core. Adds programmer creatable, user editable settings for each engine."
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "refinerycms"
  s.rubygems_version = "1.8.10"
  s.summary = "Settings engine for Refinery CMS"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, ["~> 3.0.10"])
      s.add_runtime_dependency(%q<refinerycms-base>, ["= 1.0.8"])
    else
      s.add_dependency(%q<activerecord>, ["~> 3.0.10"])
      s.add_dependency(%q<refinerycms-base>, ["= 1.0.8"])
    end
  else
    s.add_dependency(%q<activerecord>, ["~> 3.0.10"])
    s.add_dependency(%q<refinerycms-base>, ["= 1.0.8"])
  end
end
