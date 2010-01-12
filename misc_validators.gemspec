Gem::Specification.new do |s|
  s.name = "misc_validators"
  s.summary = "A collection of misc usefull validators for ActiveRecord::Base"
  s.description = "A collection of misc usefull validators for ActiveRecord::Base (email, URL)"
  s.homepage = "http://github.com/aurels/misc_validators"
  
  s.version = "0.2"
  s.date = "2010-01-10"
  
  s.authors = ["Aurélien Malisart"]
  s.email = "aurelien.malisart@gmail.com"
  
  s.require_paths = ["lib"]
  s.files = Dir["lib/*"] + Dir["test/**/*"] + ["LICENSE", "README.rdoc", "Rakefile", "install.rb", "init.rb"]
  s.extra_rdoc_files = ["README.rdoc"]
  
  s.has_rdoc = false

  s.rubygems_version = "1.3.4"
  s.required_rubygems_version = Gem::Requirement.new(">= 1.2")
end
