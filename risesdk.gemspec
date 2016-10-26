Gem::Specification.new do |s|
  s.name               = "risesdk"
  s.version            = "0.7.1"
  s.default_executable = "risesdk"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Don't Panic Consulting"]
  s.licenses = ['MIT']
  s.date = %q{2016-10-14}
  s.homepage = 'https://github.com/RiseVision/Rise-SDK-Ruby'
  s.description = %q{Rise SDK built in Ruby. Please see the github page for documentation. (https://github.com/RiseVision/Rise-SDK-Ruby)}
  s.email = %q{nathan.burchill@dontpanic.consulting}
  s.files = ["lib/risesdk.rb", "lib/api/helpers.rb", "lib/api/accounts.rb", "lib/api/blocks.rb", "lib/api/delegates.rb", "lib/api/helpers.rb", "lib/api/loader.rb", "lib/api/multiSignatures.rb", "lib/api/peers.rb", "lib/api/signatures.rb", "lib/api/transactions.rb"]
  #s.test_files = ["test/test.rb"]
  s.add_runtime_dependency "requests",
   ["= 1.0.0"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Rise SDK built in Ruby}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
