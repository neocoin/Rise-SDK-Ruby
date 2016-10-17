Gem::Specification.new do |s|
  s.name               = "risesdk"
  s.version            = "0.0.1"
  s.default_executable = "risesdk"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Don't Panic Consulting"]
  s.date = %q{2016-10-14}
  s.description = %q{RiseSDK}
  s.email = %q{nathan.burchill@dontpanic.consulting}
  s.files = ["lib/risesdk.rb", "lib/helpers.rb", "lib/api/loader.rb"]
  s.test_files = ["test/test.rb"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{RiseSDK}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
