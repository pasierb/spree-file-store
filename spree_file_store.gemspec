Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_file_store'
  s.version     = '0.30'
  s.summary     = 'Upload and manage files for your Spree store. Redone for Spree 0.30, Rails 3, and Paperclip'
  s.required_ruby_version = '>= 1.8.7'
  s.author            = 'rigelgroupllc'

  s.files        = Dir['README.markdown', 'LICENSE', 'lib/**/*', 'app/**/*', 'config/**/*', 'db/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 0.30')
  s.add_dependency('paperclip')
end