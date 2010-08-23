Gem::Specification.new do |s|
  s.name     = "numbertwopencil"
  s.version  = "0.1.6"
  s.date     = "2009-09-18"
  s.summary  = "Ruby library for accessing school data using the education.com web services."
  s.email    = "danwoolley@gmail.com"
  s.homepage = "http://github.com/danwoolley/numbertwopencil"
  s.description = "Ruby library for accessing school data using the education.com web services."
  s.has_rdoc = false
  s.authors  = ["Dan Woolley"]
  s.files    = ["README", 
		"lib/numbertwopencil.rb", 
		"demo/demo.rb", 
		"sample_data/schoolSearch.json", 
		"sample_data/schoolSearch.xml"]
  s.add_dependency("json", [">= 1.1.3"])
end
