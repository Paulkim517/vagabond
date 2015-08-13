# -*- encoding: utf-8 -*-
# stub: jquery-validation-rails 1.13.1 ruby lib

Gem::Specification.new do |s|
  s.name = "jquery-validation-rails"
  s.version = "1.13.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dan Ryan"]
  s.date = "2015-01-07"
  s.description = "Integrate the jQuery Validation plugin into the Rails asset pipeline"
  s.email = ["dan@appliedawesome.com"]
  s.homepage = "https://github.com/danryan/jquery-validation-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "This jQuery plugin makes simple clientside form validation trivial, while offering lots of option for customization. That makes a good choice if you\u{2019}re building something new from scratch, but also when you\u{2019}re trying to integrate it into an existing application with lots of existing markup. The plugin comes bundled with a useful set of validation methods, including URL and email validation, while providing an API to write your own methods. All bundled methods come with default error messages in english and translations into 36 locales."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, ["~> 0.14"])
      s.add_runtime_dependency(%q<railties>, ["< 5.0", ">= 3.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<thor>, ["~> 0.14"])
      s.add_dependency(%q<railties>, ["< 5.0", ">= 3.2"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<thor>, ["~> 0.14"])
    s.add_dependency(%q<railties>, ["< 5.0", ">= 3.2"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
