=begin
require 'rake/gempackagetask'

Gem::Specification.new do |s|
    s.name              =   "NumberTwoPencil"
    s.version           =   "0.1.1"
    s.date              =   "2008-09-18"
    s.author            =   "Dan Woolley"
    s.email             =   "danwoolley@gmail.com"
    s.summary           =   "Ruby library for accessing school data using the education.com web services."
    s.files             =   FileList['lib/*.rb', 'test/*', 'sample_data/*', 'demo/demo.rb'].to_a
    s.test_files        =   Dir.glob('test/*.rb')
    s.require_path      =   "lib"
    s.has_rdoc          =   false
    s.extra_rdoc_files  =   ["README"]
end
=end

Gem::Specification.new do |s|
  s.name     = "numbertwopencil"
  s.version  = "0.1.3"
  s.date     = "2008-09-18"
  s.summary  = "Ruby library for accessing school data using the education.com web services."
  s.email    = "danwoolley@gmail.com"
  s.homepage = "http://github.com/danwoolley/numbertwopencil"
  s.description = "Ruby library for accessing school data using the education.com web services."
  s.has_rdoc = false
  s.authors  = ["Dan Woolley"]
  s.files    = ["README", 
		"numbertwopencil.gemspec", 
		"lib/numbertwopencil.rb", 
		"demo/demo.rb", 
		"sample_data/schoolSearch.json", 
		"sample_data/schoolSearch.xml"]
=begin
  s.test_files = ["test/test_actor.rb", 
      "test/test_blob.rb", "test/test_commit.rb", 
      "test/test_config.rb", 
      "test/test_diff.rb", 
      "test/test_git.rb", 
      "test/test_grit.rb", 
      "test/test_head.rb", 
      "test/test_real.rb", 
      "test/test_reality.rb",
      "test/test_remote.rb", 
      "test/test_repo.rb", 
      "test/test_tag.rb", 
      "test/test_tree.rb"]
  s.rdoc_options = ["--main", "README.txt"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.add_dependency("diff-lcs", ["> 0.0.0"])
  s.add_dependency("mime-types", ["> 0.0.0"])
=end
  s.add_dependency("json", [">= 1.1.3"])
end
