# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{paperclip}
  s.version = "2.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jon Yurek"]
  s.date = %q{2009-02-07}
  s.email = %q{jyurek@thoughtbot.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc", "LICENSE", "Rakefile", "init.rb", "generators/paperclip", "generators/paperclip/paperclip_generator.rb", "generators/paperclip/templates", "generators/paperclip/templates/paperclip_migration.rb.erb", "generators/paperclip/USAGE", "lib/paperclip", "lib/paperclip/attachment.rb", "lib/paperclip/callback_compatability.rb", "lib/paperclip/geometry.rb", "lib/paperclip/iostream.rb", "lib/paperclip/processor.rb", "lib/paperclip/storage.rb", "lib/paperclip/thumbnail.rb", "lib/paperclip/upfile.rb", "lib/paperclip.rb", "tasks/paperclip_tasks.rake", "test/attachment_test.rb", "test/database.yml", "test/debug.log", "test/fixtures", "test/fixtures/12k.png", "test/fixtures/50x50.png", "test/fixtures/5k.png", "test/fixtures/bad.png", "test/fixtures/text.txt", "test/fixtures/twopage.pdf", "test/geometry_test.rb", "test/helper.rb", "test/integration_test.rb", "test/iostream_test.rb", "test/matchers", "test/matchers/have_attached_file_matcher_test.rb", "test/matchers/validate_attachment_content_type_matcher_test.rb", "test/matchers/validate_attachment_presence_matcher_test.rb", "test/matchers/validate_attachment_size_matcher_test.rb", "test/paperclip_test.rb", "test/processor_test.rb", "test/s3.yml", "test/storage_test.rb", "test/thumbnail_test.rb", "shoulda_macros/matchers", "shoulda_macros/matchers/have_attached_file_matcher.rb", "shoulda_macros/matchers/validate_attachment_content_type_matcher.rb", "shoulda_macros/matchers/validate_attachment_presence_matcher.rb", "shoulda_macros/matchers/validate_attachment_size_matcher.rb", "shoulda_macros/matchers.rb", "shoulda_macros/paperclip.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://www.thoughtbot.com/projects/paperclip}
  s.rdoc_options = ["--line-numbers", "--inline-source"]
  s.require_paths = ["lib"]
  s.requirements = ["ImageMagick"]
  s.rubyforge_project = %q{paperclip}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{File attachments as attributes for ActiveRecord}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<right_aws>, [">= 0"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<right_aws>, [">= 0"])
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<right_aws>, [">= 0"])
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
