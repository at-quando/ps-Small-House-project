# -*- encoding: utf-8 -*-
# stub: spina 0.12.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spina".freeze
  s.version = "0.12.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bram Jetten".freeze, "Harm de Wit".freeze]
  s.date = "2017-07-30"
  s.description = "CMS".freeze
  s.email = ["bram@denkgroot.com".freeze, "harm@denkgroot.com".freeze]
  s.homepage = "http://www.denkgroot.com".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.8".freeze
  s.summary = "Spina".freeze

  s.installed_by_version = "2.6.8" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 5.0"])
      s.add_runtime_dependency(%q<bcrypt>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<haml-rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<sass-rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<coffee-rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<jquery-fileupload-rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<carrierwave>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<mini_magick>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<ancestry>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<breadcrumbs_on_rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<turbolinks>.freeze, ["~> 5"])
      s.add_runtime_dependency(%q<kaminari>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<globalize>.freeze, ["~> 5.1.0.beta2"])
      s.add_runtime_dependency(%q<rack-rewrite>.freeze, ["~> 1.5.0"])
      s.add_development_dependency(%q<factory_girl>.freeze, ["~> 4.0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 5.0"])
      s.add_dependency(%q<bcrypt>.freeze, [">= 0"])
      s.add_dependency(%q<haml-rails>.freeze, [">= 0"])
      s.add_dependency(%q<sass-rails>.freeze, [">= 0"])
      s.add_dependency(%q<coffee-rails>.freeze, [">= 0"])
      s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_dependency(%q<jquery-fileupload-rails>.freeze, [">= 0"])
      s.add_dependency(%q<carrierwave>.freeze, [">= 0"])
      s.add_dependency(%q<mini_magick>.freeze, [">= 0"])
      s.add_dependency(%q<ancestry>.freeze, [">= 0"])
      s.add_dependency(%q<breadcrumbs_on_rails>.freeze, [">= 0"])
      s.add_dependency(%q<turbolinks>.freeze, ["~> 5"])
      s.add_dependency(%q<kaminari>.freeze, [">= 0"])
      s.add_dependency(%q<globalize>.freeze, ["~> 5.1.0.beta2"])
      s.add_dependency(%q<rack-rewrite>.freeze, ["~> 1.5.0"])
      s.add_dependency(%q<factory_girl>.freeze, ["~> 4.0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 5.0"])
    s.add_dependency(%q<bcrypt>.freeze, [">= 0"])
    s.add_dependency(%q<haml-rails>.freeze, [">= 0"])
    s.add_dependency(%q<sass-rails>.freeze, [">= 0"])
    s.add_dependency(%q<coffee-rails>.freeze, [">= 0"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_dependency(%q<jquery-fileupload-rails>.freeze, [">= 0"])
    s.add_dependency(%q<carrierwave>.freeze, [">= 0"])
    s.add_dependency(%q<mini_magick>.freeze, [">= 0"])
    s.add_dependency(%q<ancestry>.freeze, [">= 0"])
    s.add_dependency(%q<breadcrumbs_on_rails>.freeze, [">= 0"])
    s.add_dependency(%q<turbolinks>.freeze, ["~> 5"])
    s.add_dependency(%q<kaminari>.freeze, [">= 0"])
    s.add_dependency(%q<globalize>.freeze, ["~> 5.1.0.beta2"])
    s.add_dependency(%q<rack-rewrite>.freeze, ["~> 1.5.0"])
    s.add_dependency(%q<factory_girl>.freeze, ["~> 4.0"])
  end
end
