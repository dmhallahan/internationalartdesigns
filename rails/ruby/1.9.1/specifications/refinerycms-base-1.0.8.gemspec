# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "refinerycms-base"
  s.version = "1.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Resolve Digital", "Philip Arndt", "David Jones", "Steven Heidel", "U\u{c4}\u{a3}is Ozols"]
  s.date = "2011-09-01"
  s.description = "This provides a base for Refinery CMS which handles things like settings on the Refinery namespace."
  s.email = "info@refinerycms.com"
  s.homepage = "http://refinerycms.com"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "refinerycms"
  s.rubygems_version = "1.8.10"
  s.summary = "Base engine for Refinery CMS"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
