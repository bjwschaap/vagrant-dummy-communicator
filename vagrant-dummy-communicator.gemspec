# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "vagrant-dummy-communicator"
  s.version     = File.read('VERSION').chop
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Bastiaan Schaap"]
  s.email       = ["bastiaan.schaap@siteminds.nl"]
  s.license     = 'MIT'
  s.homepage    = "https://github.com/bjwschaap/vagrant-dummy-communicator"
  s.summary     = %q{A Vagrant plugin to disable communications with the guest VM}
  s.description = %q{A Vagrant plugin that can be used when provisioning/communicating/ssh for the guest VM is not needed (e.g. PXE boot).}

  s.required_ruby_version = ">= 2.0"
  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "i18n"
  s.add_dependency "log4r"

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|testdrive|\.github)/}) }
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.metadata = {
    "bug_tracker_uri" => "https://github.com/bjwschaap/vagrant-dummy-communicator/issues",
    "changelog_uri" => "https://github.com/bjwschaap/vagrant-dummy-communicator/blob/main/CHANGELOG.md",
    "documentation_uri" => "http://rubydoc.info/gems/vagrant-dummy-communicator",
    "source_code_uri" => "https://github.com/bjwschaap/vagrant-dummy-communicator"
  }
end
