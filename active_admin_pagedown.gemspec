# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "active_admin_pagedown/version"

Gem::Specification.new do |s|
  s.name          = %q{activeadmin_pagedown}
  s.license       = "MIT"
  s.version       = ActiveAdminPagedown::VERSION
  s.platform      = Gem::Platform::RUBY
  s.homepage      = %q{https://github.com/mguymon/active_admin_pagedown}
  s.authors       = ["Michael Guymon"]
  s.email         = ["mguymon@tobedevoured.com"]
  s.description   = %q{Pagedown widget for ActiveAdmin.}
  s.summary       = %q{Pagedown widget for ActiveAdmin.}

  s.files         = `git ls-files`.split("\n").sort
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("activeadmin", ">= 0.5.0")
end