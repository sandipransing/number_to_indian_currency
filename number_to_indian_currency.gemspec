# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "number_to_indian_currency/version"

Gem::Specification.new do |s|
  s.name        = "number_to_indian_currency"
  s.version     = NumberToIndianCurrency::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sandip Ransing"]
  s.email       = ["sandip@funonrails.com"]
  s.homepage    = ""
  s.summary     = %q{Helper that coverts number to indian currency with rupees symbol with css}
  s.description = "Converts number to indian currency with rupee style"

  s.rubyforge_project = "number_to_indian_currency"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
