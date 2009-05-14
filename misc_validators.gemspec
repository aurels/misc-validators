# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{misc_validators}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Aur\303\251lien Malisart"]
  s.date = %q{2009-05-14}
  s.description = %q{A collection of misc usefull validators for ActiveRecord::Base}
  s.email = %q{aurelien.malisart@gmail.com}
  s.extra_rdoc_files = ["lib/misc_validators.rb", "README.rdoc", "tasks/misc_validators_tasks.rake"]
  s.files = ["init.rb", "install.rb", "lib/misc_validators.rb", "MIT-LICENSE", "Rakefile", "README.rdoc", "tasks/misc_validators_tasks.rake", "test/misc_validators_test.rb", "test/test_helper.rb", "uninstall.rb", "Manifest", "misc_validators.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/aurels/misc_validators}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Misc_validators", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{misc_validators}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A collection of misc usefull validators for ActiveRecord::Base}
  s.test_files = ["test/misc_validators_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
